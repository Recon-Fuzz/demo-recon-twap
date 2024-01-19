
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {BaseSetup} from "@chimera/BaseSetup.sol";

import "src/TwapObserver.sol";
import "src/INLINED_OPTIMIZED_RelativeTwapWeightedObserver.sol";
import "src/REFERENCE_RelativeTwapWeightedObserver.sol";
import "src/TwapWeightedObserver.sol";
import "src/U72_OptimizedTwap.sol";
import "src/OPTIMIZED_RelativeTwapWeightedObserver.sol";
import "src/ExampleTwap.sol";

abstract contract Setup is BaseSetup {

    INLINED_OPTIMIZED_RelativeTwapWeightedObserver iNLINED_OPTIMIZED_RelativeTwapWeightedObserver;
    REFERENCE_RelativeTwapWeightedObserver rEFERENCE_RelativeTwapWeightedObserver;

    function setup() internal virtual override {
      iNLINED_OPTIMIZED_RelativeTwapWeightedObserver = new INLINED_OPTIMIZED_RelativeTwapWeightedObserver(0); // TODO: Add parameters here
      rEFERENCE_RelativeTwapWeightedObserver = new REFERENCE_RelativeTwapWeightedObserver(0); // TODO: Add parameters here
    }
}