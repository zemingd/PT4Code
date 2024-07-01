package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N)
	m := make(map[int]int)
	for i := range a {
		fmt.Scan(&a[i])
		m[a[i]]++
	}
	fmt.Println(len(m))
}
