package main

import (
	"fmt"
)

func main() {
	var x, n int
	fmt.Scan(&x, &n)
	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
	}

	for i := 0; i < 10000; i++ {
		ok := true
		for j := 0; j < len(p); j++ {
			if x-i == p[j] {
				ok = false
			}
		}
		if ok {
			fmt.Println(x - i)
			return
		}
		ok = true
		for j := 0; j < len(p); j++ {
			if x+i == p[j] {
				ok = false
			}
		}
		if ok {
			fmt.Println(x + i)
			return
		}
	}
}
