
/*
 Copyright (C) 2005 StatPro Italia srl

 This file is part of QuantLib, a free-software/open-source library
 for financial quantitative analysts and developers - http://quantlib.org/

 QuantLib is free software: you can redistribute it and/or modify it under the
 terms of the QuantLib license.  You should have received a copy of the
 license along with this program; if not, please email quantlib-dev@lists.sf.net
 The license is also available online at http://quantlib.org/html/license.html

 This program is distributed in the hope that it will be useful, but WITHOUT
 ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 FOR A PARTICULAR PURPOSE.  See the license for more details.
*/

#include "tracing.hpp"
#include "utilities.hpp"
#include <ql/Utilities/tracing.hpp>
#include <sstream>

using namespace QuantLib;
using namespace boost::unit_test_framework;

namespace {

    std::ostream* original;

    void setup() {
        original = &(Tracing::instance().stream());
    }

    void teardown() {
        Tracing::instance().setStream(*original);
    }

    void testTraceOutput(bool enable, Tracing::Level level,
                         const std::string& result) {
        std::ostringstream output;
        if (enable)
            Tracing::instance().enable();
        else
            Tracing::instance().disable();
        Tracing::instance().setLevel(level);
        Tracing::instance().setStream(output);
        QL_TRACE(Tracing::Warning, "W");
        QL_TRACE(Tracing::Info,    "I");
        QL_TRACE(Tracing::Finest,  "F");

        #if defined(QL_ENABLE_TRACING)
        std::string expected = result;
        #else
        std::string expected = "";
        #endif
        if (output.str() != expected) {
            BOOST_FAIL("wrong trace:\n"
                       "    expected:\n"
                       "\""+ expected + "\"\n"
                       "    written:\n"
                       "\""+ output.str() + "\"");
        }
    }

}

// tests

void TracingTest::testOutput() {

    BOOST_MESSAGE("Testing tracing...");

    QL_TEST_BEGIN
    QL_TEST_SETUP

    testTraceOutput(false, Tracing::Warning, "");
    testTraceOutput(false, Tracing::Fine,    "");
    testTraceOutput(false, Tracing::All,     "");
    testTraceOutput(true,  Tracing::Warning, "W\n");
    testTraceOutput(true,  Tracing::Fine,    "W\nI\n");
    testTraceOutput(true,  Tracing::All,     "W\nI\nF\n");

    QL_TEST_TEARDOWN
}


test_suite* TracingTest::suite() {
    test_suite* suite = BOOST_TEST_SUITE("Tracing tests");

    suite->add(BOOST_TEST_CASE(&TracingTest::testOutput));
    return suite;
}

