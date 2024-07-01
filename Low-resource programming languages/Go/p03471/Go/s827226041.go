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
		for j := 0; j <= n; j++ {
			for k := 0; k <= n; k++ {
				if i+j+k > n {
					break
				}
				if 10000*i+5000*j+1000*k == yen {
					slice[0] = i
					slice[1] = j
					slice[2] = k
					judge = true
				}
			}
			if judge || i+j > n {
				break
			}
		}
		if judge {
			break
		}
	}
	if !judge {
		slice[0] = -1
		slice[1] = -1
		slice[2] = -1
	}
	fmt.Println(slice)

}
