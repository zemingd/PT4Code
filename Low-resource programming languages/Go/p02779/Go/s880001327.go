package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	ans := make(map[int]int, n)
	for _, v := range a {
		if _, ok := ans[v]; ok {
			fmt.Println("NO")
			return
		}
		ans[v] = 1
	}
	fmt.Println("YES")
}
