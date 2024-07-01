package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	m := map[int]bool{}

	var a int
	for i := 0; i < N; i++ {
		fmt.Scan(&a)
		if _, ok := m[a]; ok {
			delete(m, a)
		} else {
			m[a] = true
		}
	}

	ans := len(m)
	fmt.Println(ans)
}
