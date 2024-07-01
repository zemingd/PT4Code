package main

import (
	"fmt"
	"sort"
)

func main () {
	var lx, ly, lz, k int
	fmt.Scan(&lx, &ly, &lz, &k)
	xs := make([]int, lx)
	for i:= 0; i < lx; i++ {
		fmt.Scan(&xs[i])
	}
	ys := make([]int, ly)
	for i:= 0; i < ly; i++ {
		fmt.Scan(&ys[i])
	}
	zs := make([]int, lz)
	for i:= 0; i < lz; i++ {
		fmt.Scan(&zs[i])
	}
	na := make([]int, lx*ly)
	for i:=0; i<lx; i++{
		for j:=0; j< ly; j++ {
			na[i+j*lx] = xs[i]+ys[j]
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(na)))
	nb := make([]int, k*lz)
	for i:=0; i<k; i++{
		for j:=0; j<lz; j++ {
			nb[i+j*k] = na[i]+zs[j]
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(nb)))
	for i:=0; i<k; i++{
		fmt.Println(nb[i])
	} 
}
