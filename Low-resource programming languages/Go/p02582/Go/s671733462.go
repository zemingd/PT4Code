package main

import (
	"fmt"
)

func main() {

	var s string
	var tmp, ans int
	fmt.Scan(&s)

	for i := 0; i < len(s); i++ {
		if s[i] == 'R' {
			tmp++
		} else {
			if tmp > ans {
				ans = tmp
			}
			tmp = 0
		}
	}

	fmt.Println(ans)
}
