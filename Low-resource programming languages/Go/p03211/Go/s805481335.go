package main

import (
	"fmt"
	"math"
	"strconv"
)

func Return(args ...interface{}) int {
	return args[0].(int)
}

func main() {
	var S string
	fmt.Scan(&S)

	ans := math.MaxFloat64
	for i := 0; i <= len(S) -3; i++ {
		ans = math.Min(ans, math.Abs(float64(Return(strconv.Atoi(S[i:i+3])) - 753)))
	}
	fmt.Println(ans)
}