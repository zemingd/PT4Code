package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanln(&n)
	a := make([]int, n+1)
	ans := make([]int, n+1)
	for i := 1; i < n+1; i++ {
		fmt.Scan(&a[i])
	}
	for i := n; i > 0; i-- {
		temp := 0
		for j := 2 * i; j < n+1; j += i {
			temp += ans[j]
		}
		ans[i] = (2 + a[i] - temp) % 2
	}
	m := 0
	for _, v := range ans {
		m += v
	}
	fmt.Println(m)
	for i := 1; i < n+1; i++ {
		if ans[i] > 0 {
			fmt.Print(i)
			if m > 1 {
				fmt.Print(" ")
			} else {
				fmt.Println("")
			}
			m--
		}
	}
}
