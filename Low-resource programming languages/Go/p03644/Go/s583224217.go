package main

import (
	"fmt"
	"sort"
)

type BreakNumber map[int]int

func (breakNumber BreakNumber) set(number int) {
	key := number
	count := 0
	for ; true; count++ {
		if ItoB(number % 2) {
			break
		}
		number /= 2
	}
	breakNumber[key] = count
}

func (breakNumber BreakNumber) max() int {
	intSlice := make([]int,len(breakNumber))
	for key := range breakNumber {
		intSlice = append(intSlice,key)
	}
	sort.Sort(sort.IntSlice(intSlice))

	return intSlice[len(intSlice)]
}

func ItoB(number int) bool {
	if number != 0 {
		return true
	}
	return false
}

func main() {
	var N int
	var breakNumber BreakNumber
	fmt.Scan(&N)

	for count := 0;count < N; count++ {
		breakNumber.set(count)
	}

	fmt.Println(breakNumber.max())
}
