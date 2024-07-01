package main

import (
	"fmt"
	"os"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	sort.Sort(sort.IntSlice(a))

	for i := 0; i < n-1; i++ {
		if a[i] == a[i+1] {
			fmt.Println("NO")
			os.Exit(0)
		}
	}

	fmt.Println("YES")

}
