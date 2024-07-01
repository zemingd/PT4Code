package main

import (
	"fmt"
	"sort"
)

func main() {
	ar := make([]int, 3)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	sort.Ints(ar)
	fmt.Println(ar[2] - ar[0])
}
