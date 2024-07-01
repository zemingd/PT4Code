package main

import (
	"fmt"
	"sort"
)

func main() {
	var L, n int
	fmt.Scan(&L, &n)
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
