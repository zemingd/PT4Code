package main

import (
	"fmt"
)

func f(n int) int {
	if n%2 == 0 {
		return n / 2
	}
	return 3*n + 1
}

func main() {
	var s, p, a, ans int
	L := make([]int, 0)
	fmt.Scan(&s)
	for i := 1; ; i++ {
		if i == 1 {
			a = s
		} else {
			a = f(p)
		}
		L = append(L, a)
		p = a
		found := false
		if i >= 3 {
			for j := len(L) - 2; j >= 0; j-- {
				if a == L[j] {
					ans = i
					found = true
				}
			}
		}
		if found {
			break
		}
	}
	fmt.Println(ans)
}
