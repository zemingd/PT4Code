// ProblemURL : https://atcoder.jp/contests/abc114/tasks/abc114_c
// ---------------------------------------------
package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	ct := 0
	var dfs func(int)
	dfs = func(x int) {
		if x > n {
			return
		}
		if func(n int) bool {
			a, b, c := false, false, false
			for n > 0 {
				switch n % 10 {
				case 3:
					a = true
				case 5:
					b = true
				case 7:
					c = true
				}
				n /= 10
			}
			return a && b && c
		}(x) {
			ct++
		}
		dfs(x*10 + 3)
		dfs(x*10 + 5)
		dfs(x*10 + 7)
	}
	dfs(0)
	fmt.Println(ct)
}
