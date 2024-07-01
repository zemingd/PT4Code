package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	ar := []int{a, b, c}
	sort.Ints(ar)
	fmt.Println(ar[2]*10 + ar[1] + ar[0])
}
