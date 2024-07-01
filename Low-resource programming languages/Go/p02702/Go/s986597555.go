package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	type pair struct{ i, j int }
	ans := make(map[pair]bool)
	for i := 1; i <= 99; i++ {
		t := strconv.Itoa(2019 * i)
		lt := len(t)
		for j := 0; j+lt <= len(s); j++ {
			if t == s[j:j+lt] {
				ans[pair{j, j + lt}] = true
			}
		}
	}
	fmt.Println(len(ans))
}
