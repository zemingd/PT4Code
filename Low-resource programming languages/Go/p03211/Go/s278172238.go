package main

import (
	"fmt"
	"strconv"
)

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	var S string
	fmt.Scan(&S)

	var ans int = 999

	for i := 0; i < len(S)-2; i++ {
		v, _ := strconv.Atoi(S[i : i+3])
		diff := abs(v - 753)
		if ans > diff {
			ans = diff
		}
	}

	fmt.Println(ans)
}
