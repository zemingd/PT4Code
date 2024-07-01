package main

import (
	"fmt"
	"strconv"
)

func main() {
	var N int
	fmt.Scan(&N)
	var i int
	var a,b int
	a = 0
	b = 0
	check := false
	for i= 2; i * i <= N; i++ {
		// a<√nを求めれば良い (√n * √n = n の時最大を迎えるので)
		if N % i == 0 {
			a = N/i
			b = i
			check = true
		}
	}
	if check {
		if a > b {
			fmt.Println(len(strconv.Itoa(a)))
		} else {
			fmt.Println(len(strconv.Itoa(b)))
		}
	} else {
		fmt.Println(len(strconv.Itoa(N)))
	}
}