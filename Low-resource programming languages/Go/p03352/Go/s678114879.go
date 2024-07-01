///
// File:  b.go
// Author: ymiyamoto
//
// Created on Sun May 13 15:37:22 2018
//
package main

import (
	"fmt"
)

var X int

func main() {
	fmt.Scan(&X)

	max := 1
	for i := 1; i*i <= X; i++ {
		max = i
	}
	fmt.Println(max * max)
}
