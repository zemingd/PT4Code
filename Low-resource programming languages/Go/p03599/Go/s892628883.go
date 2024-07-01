package main

import (
	"fmt"
)

func main() {
	var a, b, c, d, e, f int
	fmt.Scan(&a, &b, &c, &d, &e, &f)
	sww := a * 100
	sw := 0
	for w1 := 0; w1 <= f; w1 += 100 * a {
		for w2 := 0; w1+w2 <= f; w2 += 100 * b {
			for s1 := 0; w1+w2+s1 <= f; s1 += c {
				for s2 := 0; w1+w2+s1+s2 <= f; s2 += d {
					if (w1+w2)/100*e < s1+s2 {
						break
					}
					if float64(sw)/float64(sww) < float64(s1+s2)/float64(s1+s2+w1+w2) {
						sww = s1 + s2 + w1 + w2
						sw = s1 + s2
					}
				}
			}
		}
	}
	fmt.Println(sww, sw)
}
