package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	ans := 0

	fmt.Scan(&n)
	fmt.Scan(&s)

	r := []rune(s)

	for i := 1; i < n; i++ {
		cnt := 0

		for c := 'a'; c <= 'z'; c++ {
			left := false
			right := false

			for j := 0; j < i; j++ {
				if r[j] == c {
					left = true
				}
			}

			for j := 1; j < i; j++ {
				if r[j] == c {
					right = true
				}
			}

			if left && right {
				cnt++
			}
		}
		
		if ans < cnt {
			ans = cnt
		}
		
	}
	
	fmt.Println(ans)
}
