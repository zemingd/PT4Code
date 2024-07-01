package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, v, w, t int
	fmt.Scan(&a, &v, &b, &w, &t)

	if w >= v {
		fmt.Println("NO")
		return
	}

	if (v-w)*t >= math.Abs(b-a) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
