package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	vals := make(sort.IntSlice, 0, n)
	for index := 0; index < n; index++ {
		var n int
		fmt.Scan(&n)

		vals = append(vals, n)
	}

	take := Min(n, k)

	var max int

	for i := 0; i < take; i++ {
		lim := take - i
		for j := 0; j <= lim; j++ {
			var val int
			tmpVals := make(sort.IntSlice, 0, take)
			drop := Min(take-(i+j), (i + j))

			for idx := 0; idx < i; idx++ {
				tmpVals = append(tmpVals, vals[idx])
			}

			for idx := 0; idx < j; idx++ {
				tmpVals = append(tmpVals, vals[n-idx-1])
			}
			// fmt.Printf("%#v %#v %#v %#v\n", i, j, drop, tmpVals)
			sort.Sort(tmpVals)
			// fmt.Printf("%#v\n", tmpVals)

			for _, item := range tmpVals {
				if drop > 0 && item < 0 {
					drop--
					continue
				}
				val += item
			}

			if val > max {
				max = val
			}
		}
	}

	fmt.Printf("%#v\n", max)
}

func Min(nums ...int) int {
	if len(nums) == 0 {
		panic("function min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}
