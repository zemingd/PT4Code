package main

import (
	"fmt"
)

func main() {
	var a, b, v, w, t int32
	var l, i int32

	_, _ = fmt.Scan(&a, &v)
	_, _ = fmt.Scan(&b, &w)
	_, _ = fmt.Scan(&t)
	l = b - a
	i = v - w

	if l <= t*i {
		fmt.Println("YES")
	}else {
		fmt.Println("NO")
	}
}