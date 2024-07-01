package main

import "fmt"

// https://atcoder.jp/contests/abc127/tasks/abc127_b
func main() {
	var r, d, x int
	fmt.Scan(&r, &d, &x)
	gram := x
	for i := 0; i < 10; i++ {
		gram = gram * r -d
		fmt.Println(gram)
	}
}
