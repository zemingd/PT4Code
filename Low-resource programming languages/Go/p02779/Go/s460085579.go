package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i, _ := range a {
		fmt.Scan(&a[i])
	}

	ma := make(map[int]int)
	for _, v := range a {
		ma[v]++
	}
	if len(ma) == len(a) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}