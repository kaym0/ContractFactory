import "./ERC721.sol";

pragma solidity 0.8.11;

contract Sample is ERC721 {
    uint256 public totalSupply = 0;
    bool initialized = false;

    constructor() ERC721("name", "symbol") {}

    function init(string memory _name, string memory _symbol) public {
        require(!initialized, "");
        initialized = true;
        name = _name;
        symbol = _symbol;
    }

    function mint() external {
        totalSupply++;
        _safeMint(msg.sender, totalSupply);
    }

    function tokenURI(uint256 id)
        public
        view
        virtual
        override
        returns (string memory)
    {
        return "";
    }
}
