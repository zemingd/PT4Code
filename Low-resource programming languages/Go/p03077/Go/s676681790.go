package main

import (
	"fmt"
	"math"
)

func main()  {
	var n, a, min int64
	fmt.Scan(&n)
	min = 10000000000000000
	for i:=0; i<5; i++ {
		fmt.Scan(&a)
		min = int64(math.Min(float64(a), float64(min)))
	}
	//fmt.Println(n,min)
	if mod := n%min; mod == 0 {
		fmt.Println(n/min+4)
	} else {
		fmt.Println(n/min+5)
	}
}
