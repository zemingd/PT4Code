// ProblemURL : https://atcoder.jp/contests/abc116/tasks/abc116_c
// ---------------------------------------------
package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	hs := make([]int, n, n+2)
	for i := 0; i < n; i++ {
		fmt.Scan(&hs[i])
	}
	hs = append(append([]int{0}, hs...), 0)
	cost := 0
	for i := 1; i <= len(hs)-1; i++ {
		if hs[i] > hs[i-1] {
			cost += hs[i] - hs[i-1]
		}
	}
	fmt.Println(cost)
}
