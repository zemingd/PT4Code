package main

import "fmt"

func main() {
	var (
		n, m, c, num int
	)
	fmt.Scan(&n, &m)

	point := make(map[int]int, m)
	for i := 0; i < n; i++ {
		fmt.Scan(&c)
		for j := 0; j < c; j++ {
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
