package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	f := 0
	for _, e := range a {
		f += e - 1
	}
	fmt.Println(f)
}
