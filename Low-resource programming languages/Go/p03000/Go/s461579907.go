package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	list := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&list[i])
	}

	count := 1
	d := 0
	for i := 0; i < n; i++ {
		if (d + list[i]) <= x {
			count++
		}
		d = d + list[i]
	}
	fmt.Println(count)

}
