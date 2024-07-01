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

	vals := make([]int, 0, n)
	for index := 0; index < n; index++ {
		var n int
		fmt.Scan(&n)

		vals = append(vals, n)
	}

	min := Min(n, k)
	var re int
	for a := 0; a <= min; a++ {
		for b := 0; b <= min; b++ {
			if a+b > min {
				continue
			}
			cand := make(sort.IntSlice, 0, min)
			d := min - (a + b)
			var tmp int

			for index := 0; index < a; index++ {
				v := vals[index]
				cand = append(cand, v)
			}
			for j2 := 0; j2 < b; j2++ {
				cand = append(cand, vals[n-1-j2])
			}
			// fmt.Printf("%#v, %#v, %#v\n", a, b, d)
			sort.Sort(cand)
			// fmt.Printf("%#v\n", cand)
			for idx, item := range cand {
				if idx < d {
					if item > 0 {
						tmp += item
					}
				} else {
					tmp += item
				}
			}
			if re < tmp {
				re = tmp
			}
		}
	}

	fmt.Println(re)
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
