package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	var result int
	for n := 1; n <= N; n++ {
		result = 0
		for x := 1; x <= n; x++ {
			_, over := xyzEqualn(x, 1, 1, n)
			if over {
				break
			}
			for y := 1; y <= n; y++ {
				_, over := xyzEqualn(x, y, 1, n)
				if over {
					break
				}
				for z := 1; z <= n; z++ {
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
	target := x*x + y*y + z*z + x*y + y*z + z*x
	if target > n {
		return false, true
	}
	if target == n {
		return true, false
	}
	return false, false
}
