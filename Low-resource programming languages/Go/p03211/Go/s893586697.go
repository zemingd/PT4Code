package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	num := 753
	ans := 999

	for i := 0; i < len(s) - 2; i++{
		tmpStr := string([]rune(s)[i:i+3])
		tmpNum,_ := strconv.Atoi(tmpStr)
		ans = int(math.Min(float64(ans),math.Abs(float64(num-tmpNum))))
	}
	fmt.Println(ans)
}