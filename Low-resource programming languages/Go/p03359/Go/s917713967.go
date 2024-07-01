///
// File:  a.go
// Author: ymiyamoto
//
// Created on Sat May  5 21:00:18 2018
//
package main

import (
	"fmt"
)

var a, b int

func main() {
	fmt.Scan(&a, &b)

	if a <= b {
		fmt.Println(a)
	} else {
		fmt.Println(a - 1)
	}
}
