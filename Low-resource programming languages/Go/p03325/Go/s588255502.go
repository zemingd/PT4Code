package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}

	var cnt int
	for _, a := range as {
		for {
			if a%2 == 0 {
				a = a / 2
				cnt++
			} else {
				break
			}
		}
	}

	fmt.Println(cnt)
}
