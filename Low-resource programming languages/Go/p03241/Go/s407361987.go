package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	ans := 1
	for i := 1; i*i <= m; i++ {
		if m%i == 0 {
			v := m / i
			if n <= i {
				if ans < v {
					ans = v
				}
			}
			if n <= v {
				if ans < i {
					ans = i
				}
			}
		}
	}
	fmt.Println(ans)
}
