package main

import (
	"fmt"
	"sort"
)

func main() {
	lists := make([]int, 3)
	for i:=0; i<3; i++{
		fmt.Scan(&lists[i])
	}
	sort.Ints(lists)
	fmt.Println(lists[2]*10 + lists[1] + lists[0])
}
