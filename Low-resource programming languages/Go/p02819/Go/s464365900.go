package main

import (
	"fmt"
	"math"
)

func main() {
	var x int
	fmt.Scan(&x)

	for i := x; ; i++ {
		ok := true
		for j := 2; j < int(math.Sqrt(float64(i))); j++ {
			if i%j == 0 {
				ok = false
				continue
			}
		}
		if ok {
			fmt.Println(i)
			return
		}
	}
}
