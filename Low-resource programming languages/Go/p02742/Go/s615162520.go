package main

import (
	"fmt"
)

func main() {
	var i, h, w, ans int64
	fmt.Scan(&h)
	fmt.Scan(&w)

	if h == 1 || w == 1 {
		ans = 1
	} else {
		if h%2 == 0 && w%2 == 0 {
			for i = 1; i < h+1; i++ {
				ans += w / 2
			}
		} else {
			for i = 1; i < h+1; i++ {
				if i%2 == 0 {
					ans += w / 2
				} else {
					ans += (w / 2) + 1
				}
			}
		}
	}

	fmt.Println(ans)
}
