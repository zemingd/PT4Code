package main

import (
	"fmt"
)

func main() {
	var (
		n, m int
	)
	x, y, z := -1, -1, -1
	fmt.Scan(&n, &m)

Label1000:
	// 10000 loop
	for i := 0; i < n; i++ {
		// 5000 loop
		for j := 0; i < n; j++ {
			// 1000 loop
			for k := n - j - i; i+j+k == n; k-- {
				if m-1000*k < 0 {
					continue
				}
				if m == 1000*k+5000*j+10000*i {
					x, y, z = i, j, k
					break Label1000
				}

			}
		}
	}
	fmt.Println(x, y, z)

}
