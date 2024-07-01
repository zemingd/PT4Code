package main

import (
	"fmt"
)

func main() {
	var s, n int
	fmt.Scan(&s)
	as := make([]int, 1000000)
	as[0] = s
	for i := 1; i < 1000000; i++ {
		//calculate n
		n = as[i-1]
		if n%2 == 0 {
			as[i] = n / 2
		} else {
			as[i] = 3*n + 1
		}
		for j := 0; j < i; j++ {
			if as[i] == as[j] {
				fmt.Println(i + 1)
				return
			}
		}
	}
}
