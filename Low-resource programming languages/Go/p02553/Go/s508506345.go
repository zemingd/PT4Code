package main

import (
	"fmt"
)

func main() {
	var a, b, c, d int64

	fmt.Scan(&a, &b, &c, &d)

	var ans int64
	if a < 0 && b < 0 && c < 0 && d < 0 {
		ans = a * c
	} else if a >= 0 && b >= 0 && c >= 0 && d >= 0 {
		ans = b * d
	} else if a < 0 && b < 0 && c >= 0 && d >= 0 {
		ans = b * c
	} else if a >= 0 && b >= 0 && c < 0 && d < 0{
		ans = a * d
	} else if a < 0 && b >= 0 && c < 0 && d >= 0 {
		ans1 := a * c
		ans2 := b * d
		if ans1 > ans2 {
			ans = ans1
		}else {
			ans = ans2
		}
	}
	fmt.Println(ans)
}
