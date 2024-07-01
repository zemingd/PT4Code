package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a, b string
	fmt.Scanln(&a)
	fmt.Scanln(&b)

	na, _ := strconv.ParseInt(a, 10, 0)
	nb, _ := strconv.ParseInt(a, 10, 0)
	fmt.Print(run(na, nb))
}

func run(na, nb int64) int {
	arr := []int{1, 2, 3}
	arr[na-1] = 0
	arr[nb-1] = 0
	for _, elem := range arr {
		if elem > 0 {
			return elem
		}
	}
	return 0
}
