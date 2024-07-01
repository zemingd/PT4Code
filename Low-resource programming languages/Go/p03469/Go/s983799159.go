/*
* Copyright 2017 コンセンサス・ベイス株式会社 All Rights Reserved
*
* SPDX-License-Identifier: Apache-2.0
*/

package main

import (
    "encoding/binary"
    "fmt"
    "bytes"
    "math"
    "strconv"
    "github.com/hyperledger/fabric/core/chaincode/shim"
    "github.com/hyperledger/fabric/protos/peer"
)

type MyToken struct {
}

func (s *MyToken) Init(APIstub shim.ChaincodeStubInterface) peer.Response {
    return shim.Success(nil)
}

func (t *MyToken) Invoke(stub shim.ChaincodeStubInterface) peer.Response {
    functionName, args := stub.GetFunctionAndParameters()
    switch functionName{
    case "TransferToken":
        return t.TransferToken(stub, args)
    case "GetUserBalance":
        return t.GetUserBalance(stub, args)
    case "CreateUser":
        return t.CreateUser(stub, args)
    default:
        return shim.Error("Invalid Smart Contract function name.")
    }
}

/**
* @fn
* トークンの送受信をする関数
* @param (stub,args)args[0]=ユーザーID(送信元),args[1]=ユーザーID(送信先),args[2]=送受信するトークンの量
*/
func (t *MyToken) TransferToken(stub shim.ChaincodeStubInterface, args []string) peer.Response {
    if len(args) != 3 {
        return shim.Error("Incorrect arguments. Expecting a UserID, UserID and balance")
    }
    value0, err := stub.GetState(args[0])
    if err != nil {
        return shim.Error(fmt.Sprintf("Failed to get balance: %s with error: %s", args[0], err))
    }
    if value0 == nil{
        return shim.Error(fmt.Sprintf("User not found: %s", args[0]))
    }
    value1, err := stub.GetState(args[1])
    if err != nil {
        return shim.Error(fmt.Sprintf("Failed to get balance: %s with error: %s", args[1], err))
    }
    if value1 == nil{
        return shim.Error(fmt.Sprintf("User not found: %s", args[1]))
    }
    amount64, err := strconv.ParseFloat(args[2], 32)
    if err != nil {
        return shim.Error("Incorrect arguments. Expecting a UserID and balance.")
    }
    amount := float32(amount64)
    balance0 := BtoF(value0)
    balance1 := BtoF(value1)
    if amount < 0 {
        return shim.Error("Incorrect arguments. Expecting a UserID, UserID and balance")
    }
    if balance0 < amount {
        return shim.Error("Failed to transfer token.")
    }
    balance0 -= amount
    balance1 += amount
    stub.PutState(args[0], FtoB(balance0))
    stub.PutState(args[1], FtoB(balance1))
    return shim.Success(nil)
}

/**
* @fn
* ユーザーの残りの残高を取得する関数
* @param (stub,args)args[0]=ユーザーID
*/
func (t *MyToken) GetUserBalance(stub shim.ChaincodeStubInterface, args []string) peer.Response {
    if len(args) != 1 {
        return shim.Error("Incorrect arguments. Expecting a UserID")
    }
    value, err := stub.GetState(args[0])
    if err != nil {
        return shim.Error(fmt.Sprintf("Failed to get balance: %s with error: %s", args[0], err))
    }
    if value == nil {
        return shim.Error(fmt.Sprintf("User not found: %s", args[0]))
    }
    buffer := new(bytes.Buffer)
    buffer.WriteString(fmt.Sprintf("%f",BtoF(value)))
    return shim.Success(buffer.Bytes())
}

/**
* @fn
* ユーザーを作成する関数
* @param (stub,args)args[0]=ユーザーID,args[1]=初期所持金
*/
func (t *MyToken) CreateUser(stub shim.ChaincodeStubInterface, args []string) peer.Response {
    if len(args) != 2 {
        return shim.Error("Incorrect arguments. Expecting a UserID and balance")
    }
    value, err := stub.GetState(args[0])
    if err != nil {
        return shim.Error(fmt.Sprintf("Failed to get balance: %s with error: %s", args[0], err))
    }
    if value != nil {
        return shim.Error(fmt.Sprintf("User already exist: %s", args[0]))
    }
    amount64, err := strconv.ParseFloat(args[1], 32)
    amount := float32(amount64)
    if err != nil {
        return shim.Error("Incorrect arguments. Expecting a UserID and balance")
    }
    stub.PutState(args[0], FtoB(amount))
    return shim.Success(nil)
}

func main() {
    err := shim.Start(new(MyToken));
    if err != nil {
        fmt.Printf("Error starting MyToken chaincode: %s", err)
    }
}

func BtoF(bytes []byte) float32 {
    bits := binary.LittleEndian.Uint32(bytes)
    float := math.Float32frombits(bits)
    return float
}

func FtoB(float float32) []byte {
    bits := math.Float32bits(float)
    bytes := make([]byte, 4)
    binary.LittleEndian.PutUint32(bytes, bits)
    return bytes
}
