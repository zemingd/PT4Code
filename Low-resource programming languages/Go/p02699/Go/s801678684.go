package main

import (
	"fmt"
	"math"
	"strconv"
)

var memo = map[int]int{}
var S string

func main() {
	fmt.Scan(&S)
	memo[len(S)] = 0
	var res int
	for i := len(S); i >= 0; i-- {
		for j := i - 3; j >= 0; j-- {
			t1 := calc(j)
			t2 := calc(i)
			if (t1-t2)%2019 == 0 {
				res++
			}
		}
	}

	fmt.Println(res)
}

func calc(i int) int {
	if v, ok := memo[i]; ok {
		return v
	}
	a, _ := strconv.Atoi(string(S[i]))
	p := len(S) - i
	memo[i] = ((a * int(math.Pow10(p-1))) + calc(i+1)) % 2019
	return memo[i]
}
