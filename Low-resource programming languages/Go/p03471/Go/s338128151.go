package main

import (
	"fmt"
)

func main() {
	var n, yen int
	fmt.Scan(&n, &yen)

	var slice [3]int
	var judge bool
	for i := 0; i <= n; i++ {
		if judge {
			break
		}
		for j := 0; j <= n; j++ {
			if judge || i+j > n {
				break
			}
			k := n - i - j
			if 10000*i+5000*j+1000*k == yen && i+j+k == n {
				slice[0] = i
				slice[1] = j
				slice[2] = k
				judge = true
			}
		}
	}
	if !judge {
		slice[0] = -1
		slice[1] = -1
		slice[2] = -1
	}
	fmt.Println(slice[0], slice[1], slice[2])
}
