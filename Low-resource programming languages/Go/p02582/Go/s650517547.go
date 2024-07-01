package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	ans := 0
	tmp := 0

	for i := 0; i < 3; i++ {
		if s[i] == 'R' {
			tmp++
		} else {
			if ans < tmp {
				ans = tmp
			}
			tmp = 0
		}
	}
	if ans < tmp {
		ans = tmp
	}

	fmt.Println(ans)
}
