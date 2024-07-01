package main

import (
	"fmt"
	"math"
)

func main() {
	var n,counter int
	counter = 0
	fmt.Scan(&n)
	for i := 0; i <= n ; i++ {
		if i % 2 == 0 {
			continue
		}
		ncounter := 0
		j := int(math.Floor(math.Sqrt(float64(i))))
		
		for k := 1; k <=j ; k +=2  {
			if i % k == 0 {
				ncounter ++
			}
		}

		if ncounter == 4 {
			counter++ 
		}
	}
	fmt.Println(counter)
}

