package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	s := make([]int, n)
	m := map[int]int{}

	for i := range s {
		fmt.Scan(&s[i])
		m[s[i]]++
	}
	fmt.Println(len(m))
}
