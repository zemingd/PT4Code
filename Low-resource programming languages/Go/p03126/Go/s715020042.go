package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	M := make(map[int]int)
	for i := 0; i < n; i++ {
		var k, t int
		fmt.Scan(&k)
		for j := 0; j < k; j++ {
			fmt.Scan(&t)
			M[t]++
		}
	}
	ans := 0
	for _, p := range M {
		if p == n {
			ans++
		}
	}
	fmt.Print(ans)
}