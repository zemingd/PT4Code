package main

import (
	"fmt"
	"math"
)

func main() {
	var s string
	fmt.Scan(&s)
	ans := 1000
	for i := 0; i+2 < len(s); i++ {
		X := int(100*int(s[i]-'0') + 10*int(s[i+1]-'0') + 1*int(s[i+2]-'0'))
		var diff = int(math.Abs(float64(X - 753)))
		if diff < ans {
			ans = diff
		}
	}
	fmt.Println(ans)
}
