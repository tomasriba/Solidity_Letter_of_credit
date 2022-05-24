//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.21 < 0.7.0;

contract LetterOfCredit {
address IssuingBank;
address Exporter;
string DocHash;
mapping(string => bool)
ConditionDocuments;
string[] IDDocuments;
bool ContractValidation;
 
constructor(address _Exporter, string memory _DocHash) public{
IssuingBank = msg.sender;
Exporter = _Exporter;
DocHash = _DocHash;
ContractValidation = false;
}
modifier onlyIssuingBank(){
if (msg.sender != IssuingBank)
revert();
else
_;
}
modifier onlySeller(){
if (msg.sender != Exporter)
revert();
else
_;
}
function getIssuingBank() public view returns (address){
return IssuingBank;
}
function getSeller() public view returns(address){
return Exporter;
}
function getIDDocLetterOfCredit() public view returns (string memory){
return DocHash;
}
function sendIDDocument(string memory _IDDocument) onlySeller public{
IDDocuments.push(_IDDocument);
ConditionDocuments[_IDDocument] =
false;
}
function getIDDocument(uint _numDocumentReceived) public view returns
(string memory){
return IDDocuments[_numDocumentReceived-1];
}
function validateDocument(uint _numDocReceived) onlyIssuingBank public{
string memory IDDocument =
getIDDocument(_numDocReceived);
ConditionDocuments[IDDocument] = true;
}
function validateLettreCredit() onlyIssuingBank public{
ContractValidation = true;
}
function getNombreDocuments() public view returns (uint){
return IDDocuments.length;
}
function getConditionDocument(uint _numDocumentReceived) public view returns(bool){
string memory IDDocument = getIDDocument(_numDocumentReceived);
return ConditionDocuments[IDDocument];
}
function getConditionContrat() public view returns (bool){
return ContractValidation;
}
}
