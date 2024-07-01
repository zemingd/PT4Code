package main

import (
	"fmt"
	"math"
)

func main() {
	var X int
	fmt.Scan(&X)

	ans := 1
	for i := 1; i <= X; i++ {
		for j := 2; j < X; j++ {
			v := int(math.Pow(float64(i), float64(j)))
			if v <= X && ans < v {
				ans = v
			}
			if X < v {
				break
			}
		}
	}
	fmt.Println(ans)
}
