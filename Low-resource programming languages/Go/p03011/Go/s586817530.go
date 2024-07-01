package main

import (
	"fmt"
	"sort"
)

func main() {
	li := make([]int, 3)
	for i :=0; i<3; i++ {
		fmt.Scan(&li[i])
	}
	sort.Ints(li)
	fmt.Println(li[0] + li[1])
}