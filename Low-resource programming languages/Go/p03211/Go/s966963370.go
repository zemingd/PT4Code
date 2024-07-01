package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var s string
	var ans float64 = 753
	fmt.Scan(&s)
	for i := 0; i < (len(s) - 2); i++ {
		si, _ := strconv.Atoi(s[i : i+3])
		ans = math.Min(ans, math.Abs(float64(753-si)))
	}
	fmt.Println(ans)
}