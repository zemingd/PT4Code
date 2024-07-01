package main

import (
	"fmt"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)

	m := make(map[string][]int)
	for i, s0 := range S {
		s := string(s0)
		m[s] = append(m[s], i)
	}

	N := len(S)
	ans := 0
	for i, t0 := range T {
		t := string(t0)
		if index, ok := m[t]; ok {
			if i == 0 {
				ans = index[0]
			} else {
				q := ans / N
				r := ans % N
				if index[len(index)-1] <= r {
					ans = (q+1)*N + index[0]
				} else {
					left := 0
					right := len(index)
					for left < right {
						middle := ((right - left) / 2) + left
						if r+1 <= index[middle] {
							right = middle
						} else {
							left = middle + 1
						}
					}
					ans = q*N + index[left]
				}
			}
		} else {
			ans = -1
			break
		}
	}
	fmt.Println(ans + 1)
}
