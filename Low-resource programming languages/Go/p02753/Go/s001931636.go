package main

import (
	"fmt"
)

// https://atcoder.jp/contests/abc158/tasks/abc158_a
func main() {
	var s string
	fmt.Scanf("%s", &s)
	if s == "AAA" || s == "BBB" {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}