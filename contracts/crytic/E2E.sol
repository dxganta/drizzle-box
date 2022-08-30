// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

import "../SimpleStorage.sol";

contract E2E {
    SimpleStorage st =
        SimpleStorage(0x871DD7C2B4b25E1Aa18728e9D5f2Af4C4e431f5c);

    function crytic_const_storage() public returns (bool) {
        return st.storedData() == 89;
    }
}
