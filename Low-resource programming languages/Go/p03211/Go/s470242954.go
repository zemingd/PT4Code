// B - 754
// https://atcoder.jp/contests/abc114/tasks/abc114_b
// +build ignore

package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	var tmp int
	ans := 753
	fmt.Scan(&s)
	if len(s) < 3 {
		si, _ := strconv.Atoi(s)
		ans = 753 - si
		fmt.Println(ans)
	} else {
		for i := 0; i < (len(s) - 2); i++ {
			// Index of string
			// 0   1   2   3   4   5
			// | A | B | C | D | E |
			si, _ := strconv.Atoi(s[i : i+3])
			tmp = 753 - si
			if tmp < 0 {
				tmp *= -1
			}
			if tmp < ans {
				ans = tmp
			}
		}
		fmt.Println(ans)
	}
}