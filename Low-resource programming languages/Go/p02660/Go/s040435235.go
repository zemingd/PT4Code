package main

import "fmt"

func factorize(x int64) map[int64]int {
	m := make(map[int64]int)
	for i := int64(2); i*i <= x; i++ {
		for x%i == 0 {
			m[i]++
			x /= i
		}
	}
	if x != 1 {
		m[x] = 1
	}
	return m
}

func main() {
	var n int64
	fmt.Scan(&n)
	m := factorize(n)
	ans := 0
	for _, v := range m {
		b := 1
		for b <= v {
			v -= b
			b++
			ans++
		}
	}
	fmt.Println(ans)
}
