package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var S string
	fmt.Scan(&S)

	ans := 999
	for i := 0; i < len(S)-2; i++ {
		s := S[i : i+3]
		n, _ := strconv.Atoi(s)
		d := int(math.Abs(float64(753 - n)))
		if d < ans {
			ans = d
		}
	}
	fmt.Println(ans)
}
