package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	//a := make([]int, n)
	m := make(map[int]struct{})
	for i := 0; i < n; i++ {
		var t int
		fmt.Scan(&t)
		_, e := m[t]
		if e {
			delete(m, t)
		} else {
			m[t] = struct{}{}
		}
	}
	fmt.Println(len(m))
}
