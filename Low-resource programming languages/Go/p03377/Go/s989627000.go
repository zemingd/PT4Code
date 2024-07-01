///
// File:  a.go
// Author: ymiyamoto
//
// Created on Sat Apr 14 21:51:07 2018
//
package main

import (
	"fmt"
)

var A, B, X int

func main() {
	fmt.Scan(&A, &B, &X)

	if X-A <= B {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
