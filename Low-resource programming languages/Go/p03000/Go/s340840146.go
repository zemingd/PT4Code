package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)

	ls := make([]int, n)
	for i := range ls {
		fmt.Scan(&ls[i])
	}

	d := 0
	count := 1
	for _, l := range ls {
		d += l
		if d <= x {
			count++
		}
	}

	fmt.Println(count)
}
