package main

import (
	"fmt"
	"math/big"
)

func main() {
	var x int64
	fmt.Scan(&x)

	for {
		if big.NewInt(x).ProbablyPrime(0) {
			break
		}
		x++
	}

	fmt.Println(x)
}

func scanNums(len int64) (nums []int64) {
	var num int64
	var i int64
	for i = 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
