package main

import (
	"fmt"
	"math"
)

func main() {
	var X int
	fmt.Scan(&X)

	if X == 1 {
		fmt.Println(1)
		return
	}

	result := 0
	Limit := sqrt(X)
	for i := 2; i <= Limit; i++ {
		n := i * i
		for {
			if result < n && X >= n {
				result = n
				if result == X-1 {
					goto end
				}
			}
			if n > X {
				break
			}
			n *= i
		}
	}

end:
	fmt.Println(result)
}

func sqrt(i int) int {
	t := math.Sqrt(float64(i))
	return int(t) + 1
}
