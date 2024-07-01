package main

import (
	"fmt"
)

func main() {
	var H, W int64
	fmt.Scan(&H, &W)
	var res int64
	if W%2 == 0 {
		res = H * (W / 2)
	} else {
		res = H * (W - 1) / 2
		if H%2 == 0 {
			res += H / 2
		} else {
			res += (H + 1) / 2
		}
	}

	fmt.Println(res)
}
