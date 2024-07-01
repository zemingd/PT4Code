package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	ar := make([]int, n)
	br := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
		br[i] = ar[i]
	}
	sort.Ints(br)
	for i := 0; i < n; i++ {
		if ar[i] <= br[n/2-1] {
			fmt.Println(br[n/2])
		} else {
			fmt.Println(br[n/2-1])
		}
	}
}
