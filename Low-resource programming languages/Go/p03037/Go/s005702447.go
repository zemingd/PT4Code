package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	L := 1
	R := 100000
	for i:=0; i<m; i++ {
		var l, r int
		fmt.Scan(&l, &r)
		if L < l {
			L = l
		}
		if r < R {
			R =r
		}
	}
	r := 0
	for i := L; i<= R; i++ {
		r++
	}
	fmt.Println(r)
}