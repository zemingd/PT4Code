// ProblemURL : https://atcoder.jp/contests/abc106/tasks/abc106_c
// ---------------------------------------------
package main

import "fmt"

func main() {
	var (
		s string
		k int
	)
	fmt.Scan(&s, &k)
	k--
	for i := range s {
		if s[i] == '1' {
			continue
		}

		if k >= i {
			fmt.Println(string(s[i]))
			return
		} else {
			fmt.Println("1")
			return
		}
	}
	fmt.Println("1")
}
