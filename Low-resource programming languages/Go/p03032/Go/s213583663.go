package main

import (
	"fmt"
	"math"
	"sort"
)

type Int64Slice []int64

func (p Int64Slice) Len() int           { return len(p) }
func (p Int64Slice) Less(i, j int) bool { return p[i] < p[j] }
func (p Int64Slice) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

func main() {
	var n, k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	vals := make(Int64Slice, 0, n)
	for index := 0; index < n; index++ {
		var n int64
		fmt.Scan(&n)

		vals = append(vals, n)
	}

	take := Min(n, k)

	var max int64

	for i := 0; i <= take; i++ {
		lim := take - i
		for j := 0; j <= lim; j++ {
			var val int64
			tmpVals := make(Int64Slice, 0, take)
			drop := k - i - j
			tmpVals = append(tmpVals, vals[:j]...)
			tmpVals = append(tmpVals, vals[n-i:]...)

			// for idx := 0; idx < i; idx++ {
			// 	tmpVals = append(tmpVals, vals[idx])
			// }

			// for idx := 0; idx < j; idx++ {
			// 	tmpVals = append(tmpVals, vals[n-idx-1])
			// }

			// fmt.Printf("%#v %#v %#v %#v\n", i, j, drop, tmpVals)
			sort.Sort(tmpVals)
			// fmt.Printf("%#v %#v %#v %#v\n", i, j, drop, tmpVals)

			for _, item := range tmpVals {
				if drop > 0 && item < 0 {
					drop--
					continue
				}
				val += int64(item)
			}

			if val > max {
				max = val
			}
		}
	}

	fmt.Printf("%d\n", max)
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
