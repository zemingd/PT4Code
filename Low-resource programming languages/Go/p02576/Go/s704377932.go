package main

import (
	"fmt"
	"math"
)

func main() {
	var n, x, t int
	_, _ = fmt.Scanf("%d %d %d", &n, &x, &t)
	result := int(math.Ceil(float64(x)/float64(t))) * n
	fmt.Println(result)
}
