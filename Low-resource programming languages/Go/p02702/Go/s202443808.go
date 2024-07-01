package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	ans := 0
	n := len(s)
	var k int
	l := 1
	m := make(map[int]int)
	var tmp int
	for i := 0; i < n; i++ {
		k, _ = strconv.Atoi(s[n-i-1 : n-i])
		tmp += k * l
		tmp %= 2019
		m[tmp]++

		if m[tmp] > 1 {
			ans += m[tmp] - 1
		}

		l *= 10
		l %= 2019
	}
	ans += m[0]
	fmt.Println(ans)
}
