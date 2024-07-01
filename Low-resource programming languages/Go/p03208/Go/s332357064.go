package main

import (
	"fmt"
	"math"
	"sort"
)

func updateMin(a *int,b int){
	if *a > b{
		*a = b
	}
}

func scanInt() int{
	var v int;
	fmt.Scan(&v)
	return v
}

func scanIntSlice(N int) []int {
	_slice := make([]int,N)
	for i:=0; i< N ; i++ {
		fmt.Scan(&_slice[i])
	}
	return _slice
}
func main() {
	N :=scanInt()
	K := scanInt()
	h := scanIntSlice(N)
	sort.Ints(h)
	ans := math.MaxInt32
	for i, value := range h {
		if i+K-1 >= N {
			break
		}
		updateMin(&ans,h[i+K-1]- value)
	}
	fmt.Println(ans)
}
