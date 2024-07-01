package main

import "fmt"

func main() {
	var (
		n, m int
	)
	fmt.Scan(&n, &m)

	point := make(map[int]int, m)
	for i := 0; i < n; i++ {
		var c int
		fmt.Scan(&c)
		for j := 0; j < c; j++ {
			var num int
			fmt.Scan(&num)
			point[num]++
		}
	}

	var count int
	for _, val := range point {
		if val == n {
			count++
		}
	}
	fmt.Print(count)
}
