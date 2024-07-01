package main

import (
	"fmt"
	//"math"
	// "sort"
	//"regexp"
)

var n int
var a, b, ans string

func main() {
	fmt.Scan(&n)
	fmt.Scan(&a)
	fmt.Scan(&b)
	for i := 0; i < n; i++ {
		ans = ans + a[i:i+1]
		ans = ans + b[i:i+1]
	}
	fmt.Println(ans)
}
