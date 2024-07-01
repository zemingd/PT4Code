package main

import "fmt"

func main() {
	var N, a, r int
	fmt.Scan(&N)
	m := map[int]int{}
	for i := 0; i < N; i++ {
		fmt.Scan(&a)
		m[a]++
	}
	for _, v := range m {
		if v%2 != 0 {
			r++
		}
	}
	fmt.Println(r)
}