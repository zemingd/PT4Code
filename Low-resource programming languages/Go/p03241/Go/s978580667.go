package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n,m int
	fmt.Scan(&n,&m)
	
	limit := int(math.Floor(math.Sqrt(float64(m))))
	div := []int{}
	for i:=1; i <= limit; i++ {
		if m % i ==0{
			div = append(div,i)
			div = append(div,m/i)
		}
	}

	sort.Sort(sort.IntSlice(div))
	for i := len(div)-1; i >= 0; i -= 1{
		if m/div[i] >= n {
			fmt.Println(div[i])
			return
		}
	}
}
