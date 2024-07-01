// ProblemURL : https://atcoder.jp/contests/abc094/tasks/abc094_a
// ---------------------------------------------
package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)

	if a <= x && x <= a+b {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
