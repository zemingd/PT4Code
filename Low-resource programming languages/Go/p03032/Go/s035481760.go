package main

import (
	"fmt"
	"sort"
)

func sum(a []int) int {
	s := 0
	for _,e := range a {
		s += e
	}
	return s
}

func min(a,b int) int {
	if a<b {
		return a
	}
	return b
}

func max(a,b int) int {
	if a>b {
		return a
	}
	return b
}

func main() {
	var n,k int
	fmt.Scan(&n,&k)

	v := make([]int,n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}

	ans := 0
	for i := 0; i < k+1; i++ {
		p := min(i,n)
		op := k-p
		jewel := make([]int,0)
		val := sum(v[:p])
		jewel = append(jewel,v[:p]...)

		q := min(op,n-p)

		for j := 0; j < q+1; j++ {
			val2 := val + sum(v[n-j:])
			jewel2 := make([]int,0)
			jewel2 = append(jewel2,jewel...)
			jewel2 = append(jewel2,v[n-j:]...)

			sort.Ints(jewel2)

			r := min(len(jewel2),op-j)

			for a := 0; a < r+1; a++ {
				// fmt.Println(val2, jewel2, jewel2[:a])
				ans = max(ans,val2-sum(jewel2[:a]))
			}
		}
	}

	fmt.Println(ans)
}
