package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	aStr := strconv.Itoa(a)
	bStr := strconv.Itoa(b)

	var ansStr string
	if a > b {
		for i := 0; i < a; i++ {
			ansStr += bStr
		}
	} else {
		for i := 0; i < b; i++ {
			ansStr += aStr
		}
	}
	ans, _ := strconv.Atoi(ansStr)
	fmt.Println(ans)
}
