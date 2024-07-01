package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s []byte
	fmt.Scan(&s)
	n := len(s)
	as := make([]int, n)
	for i := range as {
		a, _ := strconv.Atoi(string([]byte{s[i]}))
		as[i] = a
	}
	ms := make([]int, n+1)
	const mod = 2019
	ms[0] = 0
	k := 1
	for i := n - 1; i >= 0; i-- {
		ms[n-i] = as[i]*k + ms[n-i-1]
		ms[n-i] %= mod
		k *= 10
		k %= mod
	}
	m := make(map[int]int)
	for i := range ms {
		m[ms[i]]++
	}
	var ans int
	for _, v := range m {
		if v > 1 {
			ans += v * (v - 1) / 2
		}
	}
	fmt.Println(ans)
}
