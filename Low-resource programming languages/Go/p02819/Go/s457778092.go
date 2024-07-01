package main

import (
	"fmt"
	"math"
)

func main() {
	var X int
	fmt.Scan(&X)

	ans := func() int {
		if X == 2 {
			return 2
		}

		for {
			i := 2
			for {
				if X%i == 0 {
					break
				}
				if float64(i) > math.Sqrt(float64(X)) {
					return X
				}
				i++
			}
			X++
		}

	}()

	fmt.Println(ans)
}
