package main

import (
	"fmt"
	"sort"
)

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	v := []int{
		A + B,
		A - B,
		A * B,
	}

	sort.Ints(v)
	fmt.Println(v[len(v)-1])
}
