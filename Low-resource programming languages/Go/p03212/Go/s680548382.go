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
	}
	dfs := func() {
		sta := make([]int, 0, 19683)
		sta = append(sta, 0)
		for len(sta) != 0 {
			var x int
			sta, x = sta[:len(sta)-1], sta[len(sta)-1]
			if x > n {
				continue
			}
			if check(x) {
				ct++
			}
			sta = append(sta, x*10+3)
			sta = append(sta, x*10+5)
			sta = append(sta, x*10+7)
		}
	}
	dfs()
	fmt.Println(ct)
}
