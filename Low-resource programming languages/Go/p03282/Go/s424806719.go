package main

import (
	"fmt"
	"math"
)

func main() {
	var (
		s string
		k int
	)
	fmt.Scan(&s, &k)

	ans := ""
	for i := 0; k > 0; i++ {
		k -= int(math.Pow(float64(s[i]-'0'), 5000000000000000))
		ans = string(s[i])
	}

	fmt.Println(ans)
}
