// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.4.22;

contract TestUnits {

    int256 amount;
    string text;

    function setData(int256 userAmount, string memory userText) public {
        require(userAmount > 0, "Amount must be > 0");
        require(bytes(userText).length != 0, "String can not be null");

        amount = userAmount;
        text = userText;
    }

    function getAmount() public view returns(int256) {
        return amount;
    }

    function getText() public view returns(string memory) {
        return text;
    }
}
