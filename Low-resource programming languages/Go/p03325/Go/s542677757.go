///
// File:  c.go
// Author: ymiyamoto
//
// Created on Sat Jun 16 23:19:12 2018
//
package main

import "fmt"

var N int
var arr []int

func pow2(n int) int {
	ret := 0
	for n%2 == 0 {
		n /= 2
		ret++
	}
	return ret
}
func main() {
	fmt.Scan(&N)

	ans := 0
	for i := 0; i < N; i++ {
		var a int
		fmt.Scan(&a)
		ans += pow2(a)

	}
	fmt.Println(ans)
}
