package main

import (
	"fmt"
	"math"
)

func main() {

	var a [5]int
	var mint int
	for i := range a {
		fmt.Scan(&a[i])
	}
	mint = math.MaxInt32
	for i := 0; i < 5; i++ {
		for j := 0; j < 5; j++ {
			if i == j {
				continue
			}
			for k := 0; k < 5; k++ {
				if k == i || k == j {
					continue
				}
				for l := 0; l < 5; l++ {
					if l == i || l == j || l == k {
						continue
					}
					for m := 0; m < 5; m++ {
						if m == i || m == j || m == k || m == l {
							continue
						}
						// a[i], a[j], a[k], a[l], a[m])
						var t, d int
						var b [5]int
						b[0] = a[i]
						b[1] = a[j]
						b[2] = a[k]
						b[3] = a[l]
						b[4] = a[m]
						t += b[0]
						for n := 1; n < 5; n++ {
							d = t % 10
							if d != 0 {
								t += (10 - d)
							}
							t += b[n]
						}
						if mint > t {
							mint = t
						}
					}
				}
			}
		}
	}
	fmt.Println(mint)
}
