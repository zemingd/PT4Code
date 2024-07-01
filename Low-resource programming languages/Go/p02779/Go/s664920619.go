package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}

	m := make(map[int]int)

	for _, v := range a {
		m[v]++
	}

	var isNO bool
	for _, v := range m {
		if v > 1 {
			fmt.Println("NO")
			isNO = true
			break
		}
	}
	if !isNO {
		fmt.Println("YES")
	}
}
