package main

import (
	"fmt"
)

func even(n int) int {
	return n / 2
}

func odd(n int) int {
	return 3*n + 1
}

func main() {
	var s int
	fmt.Scan(&s)

	ss := []int{s}

	for i := 1; ; i++ {
		if ss[i-1]%2 == 0 {
			ss = append(ss, even(ss[i-1]))
		} else {
			ss = append(ss, odd(ss[i-1]))
		}
		for i := 0; i< len(ss)-1 ; i++ {
			if ss[i] == ss[len(ss)-1] {
				fmt.Println(len(ss))
				return
			}
		}
	}
}
