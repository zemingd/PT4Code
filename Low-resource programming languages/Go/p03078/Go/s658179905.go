package main

import (
	"fmt"
	"sort"
)

func main() {
	var x, y, z, k int
	fmt.Scan(&x, &y, &z, &k)
	ar := make([]int, x)
	br := make([]int, y)
	cr := make([]int, z)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	for i := range br {
		fmt.Scan(&br[i])
	}
	for i := range cr {
		fmt.Scan(&cr[i])
	}
	mr := make([]int, 0, x*y*z)
	for _, a := range ar {
		for _, b := range br {
			for _, c := range cr {
				mr = append(mr, a+b+c)
			}
		}
	}
	sort.Ints(mr)
	for i := len(mr) - 1; i >= len(mr)-k; i-- {
		fmt.Println(mr[i])
	}
}
