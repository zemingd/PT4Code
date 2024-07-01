package main

import (
	"fmt"
	"math"
)

func main() {
	var s string
	res := ""
	fmt.Scan(&s)
	for pos, r := range s {
		if r != 'B' {
			res += string(r)
		} else if r == 'B' && res != "" {
			res = res[0: int(math.Min(float64(pos - 1), float64(len(res) - 1)))]
		}
	}
	fmt.Println(res)
}