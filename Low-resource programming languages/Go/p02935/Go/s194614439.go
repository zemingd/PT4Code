package main

import (
	"fmt"
	"sort"
)

func main() {
	var a int
	fmt.Scan(&a)
	vals := make([]float64, a)
	for i := 0; i < a; i++ {
		fmt.Scan(&vals[i])
	}

	sort.SliceStable(vals, func(i, j int) bool { return i > j })

	var total float64
	for i := 0; i < a; i++ {
		v := vals[i]
		if i == 0 {
			total = v
		} else {
			total = (total + v) / 2
		}
	}

	fmt.Println(total)
}
