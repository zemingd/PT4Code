package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n, k int
	var r string
	var num []int
	fmt.Scan(&n)
	fmt.Scan(&k)
	for {
		num = append(num, n%k)
		n = n / k
		if n == 0 {
			break
		}
	}

	for j := len(num) - 1; j >= 0; j-- {
		r += strconv.Itoa(num[j])
	}
	fmt.Println(len(r))
}
