// ProblemURL : https://atcoder.jp/contests/abc143/tasks/abc143_c
// ---------------------------------------------
package main

import "fmt"

func main() {
	var n int
	var s []byte
	fmt.Scan(&n, &s)

	b := make([]byte, 0, len(s))
	b = append(b, s[0])
	for i := 1; i < len(s); i++ {
		if s[i-1] != s[i] {
			b = append(b, s[i])
		}
	}
	fmt.Println(len(b))
}
