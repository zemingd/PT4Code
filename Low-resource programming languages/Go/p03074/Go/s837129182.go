package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	var s string
	fmt.Scan(&s)

	max := 0
	for left := 0; left < n; {
		count, right := 0, left
		// move right until 0
		for right < n {
			if s[right:right+1] == "0" && count == k {
				break
			}

			if s[right:right+1] == "0" {
				for right < n && s[right:right+1] == "0" {
					right++
				}
				count++
			} else {
				right++
			}
		}

		if max < right - left {
			max = right - left
		}

		nowS := s[left:left+1]
		for left < n && s[left:left+1] == nowS {
			left++
		}
	}

	fmt.Println(max)
}
