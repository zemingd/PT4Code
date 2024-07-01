package main

import (
	"fmt"
	"sort"
)

func main(){
	var n int
	fmt.Scan(&n)
	var in int
	var a []int
	var b []int
	var c []int	

	for i := 0; i < n; i++{
		fmt.Scan(&in)
		a = append(a, in) 
		
	}
	for i := 0; i < n; i++{
		fmt.Scan(&in)
		b = append(b, in) 
		c = append(c, a[i] - b[i])
	}
	sort.Ints(c)
	fmt.Println(c[n - 1] + c[n - 2])
}