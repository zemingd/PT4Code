package main

import (
	"fmt"
)

func main() {
	var a, b, x, min, max int64
	fmt.Scan(&a, &b, &x)
	for i := a; i < a+x; i++ {
		if i%x == 0 {
			min = i / x
			break
		}
	}
	for i := b; i > b-x || i > 0; i-- {
		if i%x == 0 {
			max = i / x
			break
		}
	}
	if min > max || min > b {
		fmt.Println(0)
		return
	}
	fmt.Println(max - min + 1)

}