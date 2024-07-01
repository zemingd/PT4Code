// ProblemURL : https://atcoder.jp/contests/abc133/tasks/abc133_c
// ---------------------------------------------
package main

import "fmt"

const inf = 1 << 60

func chmin(a *int, b int) bool {
	if *a > b {
		*a = b
		return true
	}
	return false
}

func main() {
	var l, r int
	fmt.Scan(&l, &r)

	diff := l - r
	if diff >= 2018 {
		fmt.Println(0)
		return
	}

	ans := 1 << 67
	for i := l; i < r; i++ {
		for j := l + 1; j <= r; j++ {
			chmin(&ans, (i*j)%2019)
		}
	}
	fmt.Println(ans)
}
s