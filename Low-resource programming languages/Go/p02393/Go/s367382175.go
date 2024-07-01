package main

import (
	"fmt"
	"sort"
)

func main() {
	v := make([]int, 3)
	for i := 0; i < 3; i++ {
		var a int
		fmt.Scan(&a)
		v[i] = a
	}

	sort.Ints(v)
	fmt.Println(v[0], v[1], v[2])
}

