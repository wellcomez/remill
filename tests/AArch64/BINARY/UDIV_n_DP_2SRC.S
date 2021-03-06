/*
 * Copyright (c) 2017 Trail of Bits, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* UDIV  <Wd>, <Wn>, <Wm> */
TEST_BEGIN(UDIV_32_DP_2SRC, udiv_w3_w0_w1, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xffffffff, 1,
    1, 0xffffffff,
    0xffffffff, 0xffffffff,
    1, 2,
    5, 2,
    5, 3,
    5, 4)

    udiv w3, ARG1_32, ARG2_32
TEST_END

/* UDIV  <Xd>, <Xn>, <Xm> */
TEST_BEGIN(UDIV_64_DP_2SRC, udiv_x3_x0_x1, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xffffffff, 1,
    1, 0xffffffff,
    0xffffffff, 0xffffffff,
    1, 2,
    5, 2,
    5, 3,
    5, 4,
    0xffffffffffffffff, 0xffffffff,
    0xffffffffffffffff, 0xabcdef)

    udiv x3, ARG1_64, ARG2_64
TEST_END

