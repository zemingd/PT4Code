package main

import (
	"fmt"
)

func main() {
	var n, r, ans int
	fmt.Scanf("%d %d", &n, &r)

	if n >= 10 {
		ans = r
	} else {
		ans = r + 100*(10-n)
	}
	fmt.Println(ans)
}
