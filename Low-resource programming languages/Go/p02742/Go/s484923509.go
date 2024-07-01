package main

import (
	"fmt"
)

func main() {
	var H, W int64
	fmt.Scan(&H, &W)
	var res int64
	if H == 1 || W == 0 {
		res = 1
	} else {
		if H%2 == 0 {
			res = W * (H / 2)
		} else {
			res = W * (H - 1) / 2
			if W%2 == 0 {
				res += W / 2
			} else {
				res += (W + 1) / 2
			}
		}
	}

	fmt.Println(res)
}
