package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ret := dfs(n, 0)

	fmt.Println(ret)
}

func dfs(max, ac int) int {
	if ac > max {
		return 0
	}
	ret := 0
	if has(ac, 7) && has(ac, 5) && has(ac, 3) {
		ret += 1
	}
	return dfs(max, ac*10+7) + dfs(max, ac*10+5) +
		dfs(max, ac*10+3) + ret
}

func has(n, c int) bool {
	for n != 0 {
		if n%10 == c {
			return true
		}
		n /= 10
	}
	return false
}
