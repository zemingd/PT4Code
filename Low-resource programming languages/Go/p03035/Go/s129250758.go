package main

import (
	"fmt"
)

func main() {
	var a, b, ans int
	fmt.Scan(&a, &b)
	
	if a >= 13 {
		ans = b
	} else if a >= 6 {
		ans = b/2
	} else {
		ans = 0
	}
	
	fmt.Println(ans)
}
