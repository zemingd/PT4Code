package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ds := make([]int, n)
	for i := range ds {
		fmt.Scan(&ds[i])
	}

	counter := make(map[int]int)
	for _, d := range ds {
		counter[d]++
	}

	fmt.Println(len(counter))
}
