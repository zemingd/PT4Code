package main

import "fmt"

func main() {
	var n int64
	fmt.Scan(&n)
	m := make(map[int64]bool)
	for i := int64(2); i*i <= n; i++ {
		if n%i == 0 && !m[i] {
			n /= i
			m[i] = true
		}
	}
	if n != 1 && !m[n] {
		m[n] = true
	}
	fmt.Println(len(m))
}
