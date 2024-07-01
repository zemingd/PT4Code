package main

import "fmt"

func main() {
	var a, b, c, k int
	fmt.Scan(&a, &b, &c, &k)

	var dfs func(i, a, b, c int) bool
	dfs = func(i, a, b, c int) bool {
		if i > k {
			return false
		}

		if a < b && b < c {
			return true
		}

		res := false
		res = res || dfs(i+1, a*2, b, c)
		res = res || dfs(i+1, a, b*2, c)
		res = res || dfs(i+1, a, b, c*2)

		return res
	}

	if dfs(0, a, b, c) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
