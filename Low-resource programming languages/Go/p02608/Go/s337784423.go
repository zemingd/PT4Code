package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	fmt.Scan(&N)
	var result int
	for n := 1; n <= N; n++ {
		result = 0
		tmp := int(math.Pow(float64(n), 0.5))
		for x := 1; x <= tmp; x++ {
			_, over := xyzEqualn(x, 1, 1, n)
			if over {
				break
			}
			for y := 1; y < tmp; y++ {
				_, over := xyzEqualn(x, y, 1, n)
				if over {
					break
				}
				for z := 1; z <= tmp; z++ {
					equal, over := xyzEqualn(x, y, z, n)
					if over {
						break
					}
					if equal {
						result += 1
					}
				}
			}
		}
		fmt.Println(result)
	}

}

func xyzEqualn(x, y, z, n int) (equal bool, over bool) {
	target := int(math.Pow(float64(x), 2.0)) + int(math.Pow(float64(y), 2.0)) + int(math.Pow(float64(z), 2.0)) + x*y + y*z + z*x
	if target > n {
		return false, true
	}
	if target == n {
		return true, false
	}
	return false, false
}
