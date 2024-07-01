package main

import (
	"fmt"
	"math"
)

func main()  {
	var s string
	fmt.Scan(&s)

	var c0, c1 int64
	for _, v := range s {
		if v == '0' {
			c0++
		} else {
			c1++
		}
	}
	if c0 == 0 || c1 == 0 {
		fmt.Println(0)
	} else {
		fmt.Println(int64(2*math.Min(float64(c0), float64(c1))))
	}
}