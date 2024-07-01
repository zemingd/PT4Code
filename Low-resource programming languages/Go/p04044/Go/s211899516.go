package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, L int
	fmt.Scan(&n, &L)
	ar := make([]string, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	sort.Strings(ar)
	for _, v := range ar {
		fmt.Print(v)
	}
	fmt.Println()
}
