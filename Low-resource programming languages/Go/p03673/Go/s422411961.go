package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	c := 0
	s := ""
	for i := n - 1; i >= 0; i -= 2 {
		c++
		s += strconv.Itoa(a[i])
		if c == n {
			fmt.Println(s)
		} else {
			s += " "
		}
	}
	for i := n % 2; i < n; i += 2 {
		c++
		s += strconv.Itoa(a[i])
		if c == n {
			fmt.Println(s)
		} else {
			s += " "
		}
	}
}
