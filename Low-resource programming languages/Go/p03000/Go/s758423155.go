package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	ar := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	sum := 1
	sv := 0
	for _, v := range ar {
		sv += v
		if sv <= x {
			sum++
		}
	}
	fmt.Println(sum)
}
