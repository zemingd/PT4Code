package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	exist := make(map[int]bool)
	d := make([]int, n)
	set := make([]int, 0)
	for i := 0; i < n; i++ {
		fmt.Scan(&d[i])
		if _, ok := exist[d[i]]; !ok {
			exist[d[i]] = true
			set = append(set, d[i])
		}
	}
	fmt.Println(len(set))
}
