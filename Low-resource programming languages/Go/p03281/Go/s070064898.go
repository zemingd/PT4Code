package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	answers := 0
	for i := 1; i <= n; i += 2 {
		cnt := 2 // 1 and self
		for d := 2; d <= i/2; d++ {
			if i%d == 0 {
				cnt += 1
			}
		}
		if cnt == 8 {
			answers += 1
		}
	}

	fmt.Println(answers)
}
