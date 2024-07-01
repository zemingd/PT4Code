package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	as := make([]int, m)
	for i := range as {
		fmt.Scan(&as[i])
	}
	var sum int
	for i := range as {
		sum += as[i]
	}
	if n >= sum {
		fmt.Println(n - sum)
	} else {
		fmt.Println(-1)
	}
}
