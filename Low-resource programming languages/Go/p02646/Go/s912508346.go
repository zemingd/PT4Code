package main

import (
	"fmt"
)

// go run ./main.go < in

var a, v int
var b, w int
var t int

func main() {

	fmt.Scan(&a, &v)
	fmt.Scan(&b, &w)
	fmt.Scan(&t)

	aPoint := v*t + a
	bPoint := w*t + b

	if aPoint-bPoint >= 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
