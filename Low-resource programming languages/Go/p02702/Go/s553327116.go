package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	n := len(s)

	// 10**224 == 1 (mod 2019)
	pow10 := make([]int, 224, 224)
	pow10[0] = 1
	for i := 1; i < 224; i++ {
		pow10[i] = (pow10[i-1] * 10) % 2019
	}

	m := make([]int, n+1, n+1)
	m[n] = 0
	for i := 0; i < n; i++ {
		k := int(s[n-1-i] - '0')
		m[n-1-i] = (pow10[i%224]*k + m[n-i]) % 2019
	}

	c := make([]int, 2019, 2019)
	for i := 0; i <= n; i++ {
		c[m[i]]++
	}
	answer := int64(0)
	for i := 0; i < 2019; i++ {
		tmp := int64(c[i]) * int64(c[i]-1) / 2
		answer += tmp
	}
	fmt.Println(answer)
}
