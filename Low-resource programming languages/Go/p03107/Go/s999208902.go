package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	// Code for C - Unification
	var S string
	fmt.Scanf("%s", &S)

	ans := make(map[int]int, 2)
	for i := 0; i < len(S); i++ {
		temp, _ := strconv.Atoi(string(S[i]))
		ans[temp]++
	}

	A := int(math.Abs(float64(ans[0] - ans[1])))
	fmt.Println(len(S) - A)
}
