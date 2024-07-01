package main

import (
	"fmt"
	"sort"
)

func main() {
	var k, x int
	fmt.Scanf("%d %d", &k, &x)

	if k == 1 {
		fmt.Print(x)
		return
	}

	var puls []int
	for i := 0; i < k; i++ {
		puls = append(puls, x+i)
	}

	var d []int
	for i := 1; i < k; i++ {
		d = append(d, x-i)
	}
	sort.Sort(sort.IntSlice(d))
	cal := append(d, puls...)

	for _, c := range cal {
		fmt.Print(c)
		fmt.Print(" ")
	}

}
