package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	list := make([]string, a)
	for i := 0; i < a; i++ {
		fmt.Scan(&list[i])
	}

	sort.Strings(list)

	for i := 0; i < a; i++ {
		fmt.Print(list[i])
	}
}
