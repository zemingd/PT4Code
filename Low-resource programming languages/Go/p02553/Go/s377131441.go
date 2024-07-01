package main

import (
	"fmt"
)

func main() {
	var a, b, c, d int64
	fmt.Scanln(&a, &b, &c, &d)
	//max := int64(math.MinInt64)
	var tmp int64
	tmp = a * c
	if tmp < a*d {
		tmp = a * d
	}
	if tmp < b*c {
		tmp = b * c
	}
	if tmp < b*d {
		tmp = b * d
	}
	fmt.Println(tmp)
}
