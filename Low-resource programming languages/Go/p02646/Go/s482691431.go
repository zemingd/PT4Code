package main

import (
	"fmt"
)

func main() {
	var a, b, v, w,t int
	fmt.Scan(&a, &v)
	fmt.Scan(&b, &w)
	fmt.Scan(&t)

	if a > b {
		D := a-b
	} else {
		D:= b-a
	}
	D2:=(v-w)*t
	if D2>=D {
		fmt.Println("YES")
		return
	}
	fmt.Println("NO")
}