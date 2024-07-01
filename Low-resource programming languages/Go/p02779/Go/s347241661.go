package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	m := make(map[int]int)
	var a int
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		m[a]++
		if m[a] > 1 {
			fmt.Println("NO")
			return
		}
	}
	fmt.Println("YES")
}
