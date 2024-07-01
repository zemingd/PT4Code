package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n, a int
	fmt.Scan(&n)
	b := make([]int, n)

	for i := range b {
		fmt.Scan(&a)
		b[n/2-((i+1)/2)*[]int{-1, 1}[(n+i)%2]] = a
	}

	ans := ""
	for i := range b {
		if i != 0 {
			ans += " "
		}
		ans += strconv.Itoa(b[i])
	}
	fmt.Println(ans)
}
