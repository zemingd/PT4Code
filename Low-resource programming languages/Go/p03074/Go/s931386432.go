package main

import (
	"fmt"
)

var(
	zero = "0"[0]
)

func main() {
	var n, k int
	var s []byte
	fmt.Scan(&n)
	fmt.Scan(&k)
	fmt.Scan(&s)

	var max, currentK int
	l := make([]int, k + 1)
	for i := 0; i < k; i++ {
		l[i] = 0
	}
	var last uint8
	for i := 0; i < len(s); i++ {
		if s[i] == zero {
			if last != s[i] {
				if i - l[0] > max {
					max = i - l[0]
				}
				if currentK == k {
					for j := 0; j < k; j++ {
						l[j] = l[j + 1]
					}
				}
			}
		} else {
			if last != s[i] {
				if i != 0 && currentK < k {
					currentK++
				}
				l[currentK] = i
			}
		}
		last = s[i]
	}

	if len(s) - l[0] > max {
		max = len(s) - l[0]
	}

	fmt.Printf("%d\n", max)
}
