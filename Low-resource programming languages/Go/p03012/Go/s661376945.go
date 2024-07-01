package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	var intArray []int

	fmt.Scanf("%d", &n)
	intArray = make([]int, n)

	l := 0
	r := 0

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &intArray[i])
		r += intArray[i]
	}
	// sort.Ints(intArray)

	lastRes := 100000000000000000
	res := 0
	t := 1
	for _, v := range intArray {
		l += v
		r -= v
		res = int(math.Abs(float64(l) - float64(r)))

		// fmt.Printf("%d %d : %d : %d %d\n", l, r, t, res, lastRes)

		if lastRes < res {
			res = lastRes
			break
		}
		t++
		lastRes = res
	}

	fmt.Print(res)
}
