package main

import (
	"fmt"
	"sort"
)

func main() {
	var x, y, z, k int
	fmt.Scan(&x, &y, &z, &k)
	ar := make([]int64, x)
	br := make([]int64, y)
	cr := make([]int64, z)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	for i := range br {
		fmt.Scan(&br[i])
	}
	for i := range cr {
		fmt.Scan(&cr[i])
	}
	mr := make(drinks, 0, x*y*z)
	for _, a := range ar {
		for _, b := range br {
			for _, c := range cr {
				mr = append(mr, a+b+c)
			}
		}
	}
	sort.Sort(mr)
	for i := len(mr) - 1; i >= len(mr)-k; i-- {
		fmt.Println(mr[i])
	}
}

type drinks []int64

func (d drinks) Len() int {
	return len(d)
}

func (d drinks) Swap(i, j int) {
	d[i], d[j] = d[j], d[i]
}

func (d drinks) Less(i, j int) bool {
	return d[i] < d[j]
}
