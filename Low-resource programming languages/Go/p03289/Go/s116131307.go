// ProblemURL : https://atcoder.jp/contests/abc104/tasks/abc104_b
// ---------------------------------------------
package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	check := func() bool {
		ctUpper := 0
		for i := range s {
			if 'A' <= s[i] && s[i] <= 'Z' {
				ctUpper++
			}
		}
		return s[0] == 'A' && strings.Contains(s[2:len(s)-1], "C") && ctUpper == 2
	}

	if check() {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}
