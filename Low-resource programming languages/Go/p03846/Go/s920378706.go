package main

import (
	"fmt"
	"sort"
)

const mod = 1e9 + 7

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}

	sort.Ints(as)
	if n%2 == 1 {
		for i := range as {
			if as[i] != ((i+1)/2)*2 {
				fmt.Println(0)
				return
			}
		}
	} else {
		for i := range as {
			if as[i] != (i/2)*2+1 {
				fmt.Println(0)
				return
			}
		}
	}

	exp := -1
	if n%2 == 1 {
		exp = (n - 1) / 2
	} else {
		exp = n / 2
	}
	ans := 1
	for i := 0; i < exp; i++ {
		ans = (ans * 2) % mod
	}
	fmt.Println(ans)
}
