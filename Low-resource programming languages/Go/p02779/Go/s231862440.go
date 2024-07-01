package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	b := make(map[int]int)
	result := true
	for _, v := range a {
		b[v] += 1
		if b[v] >= 2 {
			result = false
			break
		}
	}
	if result {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
