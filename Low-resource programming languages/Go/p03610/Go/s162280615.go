// ProblemURL : https://atcoder.jp/contests/abc072/tasks/abc072_b
// ---------------------------------------------
package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	ans := make([]byte, 0, len(s))
	for i := range s {
		if i%2 == 0 {
			ans = append(ans, s[i])
		}
	}
	fmt.Println(string(ans))
}
