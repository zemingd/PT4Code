package main

import (
	"fmt"
	"math"
)

func main()  {
	var cards, gate int

	fmt.Scan(&cards, &gate)

	s := 1
	e := math.MaxInt64

	for i := 0; i < gate; i++ {
		var ss, ee int
		fmt.Scan(&ss, &ee)

		if s < ss {
			s = ss
		}

		if ee < e {
			e = ee
		}


		if s > e {
			fmt.Println(0)
			return
		}
	}
	fmt.Println(e - s + 1)
}
