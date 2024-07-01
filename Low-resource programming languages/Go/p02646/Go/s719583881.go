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

	distance := b - a

	aPoint := v * t
	bPoint := w * t

	result := aPoint - bPoint

	if result-distance >= 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
