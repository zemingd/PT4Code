package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	v := make([]float64, n)
	
	for i := range v {
		fmt.Scan(&v[i])
	}
	sort.Float64s(v)
	avg := v[0]
	for j := 1; j < n; j++ {
		avg = (avg + v[j]) / 2
        //fmt.Printf("j=%d,avg=%v\n",j,avg)
	}
	fmt.Println(avg)
}