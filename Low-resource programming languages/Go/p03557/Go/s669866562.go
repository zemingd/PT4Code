package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	for i := range b {
		fmt.Scan(&b[i])
	}
	for i := range c {
		fmt.Scan(&c[i])
	}

	ans := 0
	for _, v := range a {
		for _, w := range b {
			if v >= w {
				continue
			}
			for _, x := range c {
				if w < x {
					ans++
				}
			}
		}
	}
	fmt.Println(ans)
}
