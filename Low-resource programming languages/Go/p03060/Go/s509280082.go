// https://atcoder.jp/contests/abc125/tasks/abc125_b

package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)

	gains := make([]int, N)
	for i := range gains {
		fmt.Scanf("%d", &gains[i])
	}
	for i := range gains {
		var c int
		fmt.Scanf("%d", &c)
		gains[i] -= c
	}

	ans := 0
	for _, g := range gains {
		if g > 0 {
			ans += g
		}
	}

	fmt.Println(ans)
}
