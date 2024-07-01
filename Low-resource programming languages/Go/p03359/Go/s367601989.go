// ProblemURL : https://atcoder.jp/contests/abc096/tasks/abc096_a
// ---------------------------------------------
package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	ans := -1
	if a > b {
		ans = a - 1
	} else {
		ans = a
	}
	fmt.Println(ans)
}
