package main

import (
	"fmt"
)

func main() {
	var H, W int
	fmt.Scan(&H, &W)
	res := 0
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
