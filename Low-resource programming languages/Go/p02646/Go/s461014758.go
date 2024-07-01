package main

import (
	"fmt"
)

func main() {
	var a, b, v, w, t int64
	fmt.Scanf("%d %d", &a, &v)
	fmt.Scanf("%d %d", &b, &w)
	fmt.Scanf("%d", &t)

	if a < b {
		if a+v*t >= b+w*t {
			fmt.Println("YES")
		} else {
			fmt.Println("NO")
		}
	} else if a > b {
		if a+v*t <= b+w*t {
			fmt.Println("YES")
		} else {
			fmt.Println("NO")
		}
	}
}
