package main

import "fmt"

const mod = 2019

func main() {
	var s string
	fmt.Scan(&s)
	s = reverse(s)

	ms := make(map[int]int)
	ms[0] = 1

	m := 0
	x := 1
	ans := 0
	for i := 0; i < len(s); i++ {
		m = (m + int(s[i]-'0')*x) % mod
		ans += ms[m]
		ms[m]++
		x *= 10
		x %= mod
	}
	fmt.Println(ans)
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
