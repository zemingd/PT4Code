package main

import (
	"fmt"
	"sort"
)

func main() {

	const num = 5 //
	var in int
	var n int
	var cap []int

	//
	fmt.Scan(&n)

	for i := 0; i < num; i++{
		fmt.Scan(&in)
		cap = append(cap, in)
	}

	//
	sort.Ints(cap)

	//
	if n % cap[0] != 0{
		fmt.Println(n / cap[0] + 5)
	} else {
		fmt.Println(n / cap[0] + 5)
	}
}
