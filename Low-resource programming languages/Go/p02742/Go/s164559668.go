package main

import (
	"fmt"
	"math"
)

func main() {
	var h, w int
	fmt.Scanf("%d %d", &h, &w)
	v := h * w % 2

	var ans int
	if w < 2 || h < 2 {
		ans = 0
	} else {
		if v > 0 {
			ans = int(math.Ceil(float64(h*w) / 2.0))
		} else {
			ans = h * w / 2
		}
	}

	fmt.Println(ans)
}
