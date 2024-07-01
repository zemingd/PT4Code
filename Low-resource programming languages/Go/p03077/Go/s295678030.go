package main

import (
	"fmt"
	"os"
)

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	var n int64
	var cities [5]int64
	fmt.Fscan(fp, &n, &cities[0], &cities[1], &cities[2], &cities[3], &cities[4])
	m := minint(cities)
	if n%m > 0 {
		fmt.Println(n/m + int64(5))
	} else {
		fmt.Println(n/m + int64(4))
	}

}

func minint(list [5]int64) int64 {
	min := list[0]
	for i := int64(1); i < 5; i++ {
		if min > list[i] {
			min = list[i]
		}
	}

	return min
}
