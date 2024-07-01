package main

import (
	"fmt"
	"sort"
)

func main(){
	var X, Y, Z, K int
	fmt.Scan(&X,&Y,&Z,&K)
	a := make([]int,X)
	b := make([]int,Y)
	c := make([]int,Z)

	for i := 0; i < X; i++ {
		fmt.Scan(&a[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))

	for i := 0; i < Y; i++ {
		fmt.Scan(&b[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(b)))

	for i := 0; i < Z; i++ {
		fmt.Scan(&c[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(c)))

	var H []int
	for i := 0; i < X; i++ {
		for j := 0; j < Y; j++ {
			for k := 0; k < Z; k++ {
				if (i+1)*(j+1)*(k+1) <= K {
					H = append(H,a[i]+b[j]+c[k])
				} else {
					break
				}
			}
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(H)))
	for i := 0; i < K; i++ {
		fmt.Println(H[i])
	}
}
