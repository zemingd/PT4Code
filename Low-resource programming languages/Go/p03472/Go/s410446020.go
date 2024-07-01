package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, H int
	if _, err := fmt.Scan(&N, &H); err != nil {
		return
	}
	var A []int
	var B []int
	for i := 0; i < N; i++ {
		var tmpA, tmpB int
		if _, err := fmt.Scan(&tmpA, &tmpB); err != nil {
			return
		}
		A = append(A,tmpA)
		B = append(B,tmpB)
	}
	sort.Ints(A)
	maximumVal := A[N-1]
	count := 0
	for _, s := range B {
		if maximumVal > s{
			continue
		}
		H -= s
		count++
		if H <= 0 {
			fmt.Println(count)
			return
		}
	}

	if H%maximumVal == 0 {
		fmt.Println(count + H/maximumVal)
	} else {
		fmt.Println(count + H/maximumVal + 1)
	}
}