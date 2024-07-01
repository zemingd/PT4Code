package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	ls := make([]int, n)
	for i := range ls {
		fmt.Scan(&ls[i])
	}

	sum := 0
	ans := 1
	for _, l := range ls {
		sum += l
		if sum <= x {
			ans++
		}
	}
	fmt.Println(ans)
}
