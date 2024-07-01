package main

import (
	"fmt"
	"os"
)

func main() {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)
	mod := 2019

	if a*b < mod {
		fmt.Println(a * b)
		os.Exit(0)
	} else if a*b%mod == 0 {
		fmt.Println(0)
		os.Exit(0)
	}

	res := 2019
	for i := a; i <= b-1; i++ {
		for j := i + 1; j <= b; j++ {

			if m := i * j % mod; m < res {
				res = m
			}
			if res == 0 {
				// fmt.Println(i, j, res)
				break
			}
		}
		if res == 0 {
			break
		}
	}
	fmt.Println(res)
}
