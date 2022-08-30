// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract SimpleStorage is UUPSUpgradeable {
    event StorageSet(string _message);

    uint256 public storedData;

    function set() public {
        storedData = 89;

        emit StorageSet("Data stored successfully!");
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
}
