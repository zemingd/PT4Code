package main

import (
	"fmt"
)

func main() {
	var h, w, ans uint
	fmt.Scan(&h, &w)
	if val := h * w; val%2 == 1 {
		ans = val/2 + 1
	} else {
		ans = val / 2
	}
	if h == 1 || w == 1 {
		ans = 1
	}
	fmt.Print(ans)
}
