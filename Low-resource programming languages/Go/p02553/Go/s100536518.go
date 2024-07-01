package main

import (
	"fmt"
	"math"
)

func main() {
	var a,b,c,d int64
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &d)
	fmt.Print(int(math.Max(math.Max(float64(a*c), float64(a*d)), math.Max(float64(b*c), float64(b*d)))))
}
