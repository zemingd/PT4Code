package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	res := 1<<60
	for i := 0; i <= len(s)-3; i++ {
		x, _ := strconv.Atoi(s[i:i+3])
		d := 753 - x
		if d < 0 {
			d *= -1
		}
		if res > d {
			res = d
		}
	}

	fmt.Println(res)
}
