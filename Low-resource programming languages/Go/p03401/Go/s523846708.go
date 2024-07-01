package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	s := []int{}
	for i := 0; i < n; i++ {
		var c int
		fmt.Scan(&c)
		s = append(s, c)
	}
	s = append(s, 0)
	var stat int
	for i := 0; i < len(s)-1; i++ {
		var sum int
		stat = 0
		//inu := s[i]
		for k := 0; k < len(s); k++ {
			kn := s[k]
			if i == k {
				continue
			} else {
				t := stat - kn
				if t < 0 {
					t = -t
				}
				sum += t
				stat = kn
			}
		}

		fmt.Println(sum)
	}
}
