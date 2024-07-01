package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n+1)
	mm := make(map[int]int)
	var a int
	for i := 1; i <= n; i++ {
		fmt.Scan(&a)
		as[i] = a
		nx := i + a + 1
		if n < nx {
			continue
		}
		mm[nx]++
	}

	ans := 0
	for i := 1; i <= n; i++ {
		a := as[i]
		c := mm[i-a+1]
		if 0 < c {
			ans += c
		}
	}

	fmt.Println(ans)
}
