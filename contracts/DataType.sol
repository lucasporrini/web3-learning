// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24 <0.9.0;

contract DataType {
    // Signed integer: can be positive, negative or zero (-2 ** 255 to (2 ** 255) - 1)
    int256 public numberSigned = 5;
    int8 numberSignedMini;

    // Unsigned integer: can only be positive or zero (0 to (2 ** 255) - 1)
    uint256 numberUnsigned;
    uint8 numberUnsignedMini;

    // Boolean: can only be true or false
    bool trueOrFalse = true;

    // Address: stores a 20 byte value (size of an Ethereum address)
    address ethereumAddress = 0xb4a77715CB910BC65Dd9F024C12b5137258aC1e5;

    // Enum: user-defined data type that consists of a set of named values
    enum Size{Small, Medium, Large}

    // Bytes: similar to byte array but doesn't allow length or operations
    bytes32 arrayOfBytes;
    bytes1 signedByte; // Value type

    bytes arrayOfBytesDynamic; // Reference type

    string arrayOfCharacter = "array";

    // Fixed-size array
    uint256[3] fixedArrayOfLengthThree;
    // Dynamic-size array
    uint256[] dynamicArray;

    // Struct: user-defined data type that groups multiple variables
    struct Person {
        string name;
        uint256 age;
    }

    // Mapping: key-value store
    mapping(uint256 => Person) mappingOfPerson;

    event FirstEvent(uint number);

    modifier isGreatingThanZero(uint number) {
        numberSigned = 10;
        require(number > 0, "Need to be greater than 0");
        _;
    }

    function firstFunction(uint number) public isGreatingThanZero(number) returns(uint256) {
        for(uint i=0; i<10; i++) {
            number += 1;
        }
        emit FirstEvent(number);
        return number;
    }
}