package main

import (
	"fmt"
	"sort"
)

func main() {
	var in = make([]int, 3)
	fmt.Scanf("%d %d %d ", &in[0], &in[1], &in[2])
	sort.Ints(in)
	fmt.Println(in[0] + in[1] + 10 * in[2])
}
