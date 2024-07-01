package main

import (
	"fmt"
)

// https://atcoder.jp/contests/abc158/tasks/abc158_b
func main() {
	var n, a, b, output int
	fmt.Scanf("%d %d %d", &n, &a, &b)
	output = n / (a + b) * a
	if n%(a+b) < a {
		output += n % (a + b)
	} else {
		output += a
	}
	fmt.Println(output)
}