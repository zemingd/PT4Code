package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	m := make(map[int]int)
	var a int
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		if m[a] > 0 {
			m[a] = 0
		} else {
			m[a]++
		}
	}

	ans := 0
	for _, v := range m {
		ans += v
	}
	fmt.Println(ans)
}
