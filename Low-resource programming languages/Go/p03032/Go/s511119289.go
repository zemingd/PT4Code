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
		for b := 0; b <= min-a; b++ {
			cand := make(sort.IntSlice, 0, min)
			d := min - (a + b)
			var tmp int

			for index := 0; index < a; index++ {
				cand = append(cand, vals[index])
			}
			for index := n - 1; index > n-b-1; index-- {
				cand = append(cand, vals[index])
			}
			sort.Sort(cand)
			// fmt.Printf("%#v %v %v %v\n", cand, a, b, d)
			if len(cand) > 0 {
				for index := 0; index < len(cand); index++ {
					if index < d {
						if cand[index] > 0 {
							tmp += cand[index]
						}
					} else {
						tmp += cand[index]
					}
				}
				if re < tmp {
					re = tmp
				}
			}
		}
	}

	for a := 0; a < min; a++ {
		for b := 0; b < min; b++ {
			if a+b <= min && 0 < a+b {
				var tmp int
				for index := 0; index < a; index++ {
					tmp += vals[index]
				}
				for index := n - 1; index > n-b-1; index-- {
					tmp += vals[index]
				}
				if re < tmp {
					re = tmp
				}
			}
		}

		if a > 0 {
			for k := 1; k < min; k++ {
				for index := 0; index < a; index++ {
					var tmp int
					cand := make(sort.IntSlice, 0, min)
					cand = append(cand, vals[index])
					sort.Sort(cand)
					for j := 0; j < len(cand); j++ {
						if index < k {
							if cand[j] > 0 {
								tmp += cand[j]
							}
						} else {
							tmp += cand[j]
						}
					}
					if re < tmp {
						re = tmp
					}
				}
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
