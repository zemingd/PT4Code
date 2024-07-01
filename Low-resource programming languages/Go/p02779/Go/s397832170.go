package main

import "fmt"

func main() {
	var N, a int
	fmt.Scan(&N)
	m := map[int]int{}
	for i := 0; i < N; i++ {
		fmt.Scan(&a)
		if _, ok := m[a]; ok {
			fmt.Println("NO")
			return
		}
		m[a]++
	}
	fmt.Println("YES")
}