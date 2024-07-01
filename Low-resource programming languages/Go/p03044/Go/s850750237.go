package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	u := make([]int, n-1)
	v := make([]int, n-1)
	w := make([]int, n-1)
	for i := 0; i < n-1; i++ {
		fmt.Scan(&u[i], &v[i], &w[i])
	}
	m := make(map[int]bool)
	for i := 0; i < n-1; i++ {
		if w[i]%2 == 0 {
			m[u[i]] = true
			m[v[i]] = true
		}
	}
	for i := 0; i < n; i++ {
		v, _ := m[i+1]
		if v == true {
			fmt.Println(0)
		} else {
			fmt.Println(1)
		}
	}
}
