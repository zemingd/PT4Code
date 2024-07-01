package main

import (
	"fmt"
	"sort"
)

func main() {
	s := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scan(&s[i])
	}

	sort.Ints(s)
	fmt.Println(s[0] + s[1])
}
