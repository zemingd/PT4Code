package main

import (
	"fmt"
)

func scan(sl []int) []int{
	for i := 0; i <len(sl); i++ {
		fmt.Scan(&sl[i])
	}
	return sl
}

func main() {
	var N int
	fmt.Scan(&N)
	
	a := make([]int, N)
	b := make([]int, N)
	c := make([]int, N)

	scan(a)
	scan(b)
	scan(c)
	
	stf := 0
	
	for i := 0; i < N; i++ {
		stf += b[a[i]-1]
      
		if i > 0 && a[i - 1] == a[i] - 1 {
          stf += c[a[i - 1] - 1]
		} 
	}
	
	fmt.Println(stf)
}
