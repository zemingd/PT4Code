package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var n, a, b float64
	fmt.Scan(&n, &a, &b)

	set := math.Trunc(n / (a + b))
	blue := set * a
	mod := n - set*(a+b)
	blue += mod
	fmt.Println(strconv.FormatFloat(blue, 'f', 0, 64))
}
