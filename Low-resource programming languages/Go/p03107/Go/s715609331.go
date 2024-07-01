// ProblemURL : https://atcoder.jp/contests/abc120/tasks/abc120_c
// ---------------------------------------------
package main

import "fmt"

func smaller(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var s string
	fmt.Scan(&s)

	ct0 := 0
	ct1 := 0
	for i := range s {
		if s[i] == '0' {
			ct0++
		} else {
			ct1++
		}
	}
	t := byte('0')
	if ct1 > ct0 {
		t++
	}

	sta := 0
	ct := 0
	for i := range s {
		if s[i] == t {
			sta++
		} else {
			if sta > 0 {
				sta--
				ct++
			}
		}
	}
	ans := ct * 2
	fmt.Println(ans)
}
