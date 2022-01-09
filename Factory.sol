pragma soldity 0.8.11;

import "./Clone.sol";

contract Factory {
    using Clone for address;

    function clone(address implementation) public payable returns (address) {
        return address(implementation.clone());
    }
}
