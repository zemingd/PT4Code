package main

import (
	"fmt"
)

func main() {

	var num int
	fmt.Scan(&num)
	var primeNum bool
	for {
		primeNum = checkPrimeNum(num)
		if primeNum {
			fmt.Println(num)
			break
		}
		num++
	}
}

func checkPrimeNum(num int) bool {
	primeNum := true
	for i := 2; i < num; i++ {
		if num%i == 0 {
			primeNum = false
			break
		}
	}

	return primeNum
}
