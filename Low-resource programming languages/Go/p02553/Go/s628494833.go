package main

import (
	"fmt"
)

func main() {
	var a, b, c, d int64
	fmt.Scanln(&a, &b, &c, &d)
	//max := int64(math.MinInt64)
	var tmp int64
	if 0 < a && 0 < c {
		fmt.Println(b * d)
	} else if b < 0 && d < 0 {
		fmt.Println(a * c)
	} else if b < 0 && 0 < c {
		fmt.Println(b * c)
	} else if d < 0 && 0 < a {
		fmt.Println(a * d)
	} else {
		tmp = a * c
		if tmp > a*d {
			tmp = a * d
		}
		if tmp > b*c {
			tmp = b * c
		}
		if tmp > b*d {
			tmp = b * d
		}
		fmt.Println(tmp)
	}
}
