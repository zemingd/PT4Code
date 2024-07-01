///
// File:  a.go
// Author: ymiyamoto
//
// Created on Thu Dec 27 12:44:02 2018
//
package main

import (
  "fmt"
)

func min(a,b int)int{
	if a < b{
		return a
	}
	return b
}

func main(){
	var a, b int
	fmt.Scan(&a, &b)
	if b >= a {
		fmt.Println(a)
	} else {
		fmt.Println(a-1)
	}
}
