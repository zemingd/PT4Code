package main

import (
	"fmt"
	"sort"
)

func main() {
	in := make([]int, 3)
	fmt.Scan(&in[0], &in[1], &in[2])
	sort.Ints(in)

	fmt.Println(in[2]*10 + in[1] + in[0])
}
