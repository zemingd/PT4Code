// ProblemURL : https://atcoder.jp/contests/abc114/tasks/abc114_c
// ---------------------------------------------
package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ct := 0
	check := func(n int) bool {
		a, b, c := false, false, false
		for i := n; i > 0; i /= 10 {
			switch i % 10 {
			case 3:
				a = true
			case 5:
				b = true
			case 7:
				c = true
			default:
				return false
			}
		}
		if a && b && c {
			return true
		}
		return false
	}
	var dfs func(int)
	dfs = func(x int) {
		if x > n {
			return
		}
		if check(x) {
			ct++
		}
		dfs(x*10 + 3)
		dfs(x*10 + 5)
		dfs(x*10 + 7)
	}
	dfs(0)
	fmt.Println(ct)
}
