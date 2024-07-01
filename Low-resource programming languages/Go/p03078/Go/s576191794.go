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
	dr := make([]int, 0, x*y)
	for _, a := range ar {
		for _, b := range br {
			dr = append(dr, a+b)
		}
	}
	sort.Ints(dr)
	er := make([]int, 0, k)
	for i := len(dr) - 1; i >= 0; i-- {
		er = append(er, dr[i])
		if len(er) == k {
			break
		}
	}
	fr := make([]int, 0, len(er)*z)
	for _, e := range er {
		for _, c := range cr {
			fr = append(fr, e+c)
		}
	}
	sort.Ints(fr)
	for i := 0; i < k; i++ {
		fmt.Println(fr[len(fr)-1-i])
	}
}
