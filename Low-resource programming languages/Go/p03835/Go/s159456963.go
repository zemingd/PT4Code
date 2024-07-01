package main

import (
	"fmt"
)

func main() {
	var k, s, ans int
	fmt.Scan(&k, &s)

	for i := 0; i < k+1; i++ {
		for j := 0; j < k+1; j++ {
			t := s - i - j
			if 0 <= t && t <= k {
				ans++
			}
		}
	}
	if ans != 0 {
		fmt.Println(ans)
	}
}