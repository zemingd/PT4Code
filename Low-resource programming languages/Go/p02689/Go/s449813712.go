package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	hs := make([]int, n)
	for i, _ := range hs {
		fmt.Scan(&hs[i])
	}

	var a, b int
	mm := make(map[int]bool)
	for i := 0; i < m; i++ {
		fmt.Scan(&a, &b)
		a--
		b--

		if hs[a] <= hs[b] {
			mm[a] = true
		}
		if hs[a] >= hs[b] {
			mm[b] = true
		}
	}

	ans := 0
	for i := 0; i < n; i++ {
		if !mm[i] {
			ans++
		}
	}

	fmt.Println(ans)
}
