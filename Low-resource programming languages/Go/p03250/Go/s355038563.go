package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a, b, c string
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	fmt.Printf("%d\n", solve(a, b, c))
}

func solve(a, b, c string) int {
	max := -1
	rets := []int{}
	rets = append(rets, calc(a, b, c))
	rets = append(rets, calc(a, c, b))
	rets = append(rets, calc(b, a, c))
	rets = append(rets, calc(b, c, a))
	rets = append(rets, calc(c, a, b))
	rets = append(rets, calc(c, b, a))
	for _, r := range rets {
		if max < r {
			max = r
		}
	}
	return max
}

func calc(a, b, c string) int {
	//a + bc
	ai, _ := strconv.Atoi(a)
	bci, _ := strconv.Atoi(b + c)
	ans1 := ai + bci
	//ab + c
	abi, _ := strconv.Atoi(a + b)
	bi, _ := strconv.Atoi(c)
	ans2 := abi + bi
	if ans1 < ans2 {
		return ans2
	} else {
		return ans1
	}
}
