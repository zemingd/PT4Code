package main

import "fmt"

func main() {
	var H, W, ans int
	fmt.Scan(&H, &W)
	if H%2 == 0 || W%2 == 0 {
		ans = H * W / 2
	} else {
		ans = ((H + 1) / 2 * ((W + 1) / 2)) + (H/2)*(W/2)
	}
	fmt.Println(ans)
}
