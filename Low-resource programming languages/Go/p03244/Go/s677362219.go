package main

import (
	"fmt"
)

var n int
var nums []int

func main() {
	fmt.Scan(&n)

	odd_map := make(map[int]int, n/2)
	even_map := make(map[int]int, n/2)

	for i := 1; i <= n; i++ {
		var v int
		fmt.Scan(&v)
		if i%2 != 0 {
			odd_map[v]++
		} else {
			even_map[v]++
		}
		nums = append(nums, v)
	}

	var odd int
	var even int
	var odd_max int
	var even_max int
	for k, v := range odd_map {
		if v > odd_max {
			odd = k
			odd_max = v
		}
	}
	for k, v := range even_map {
		if v > even_max {
			even = k
			even_max = v
		}
	}
	if odd == even {
		if odd_max == even_max {
			var first, second int
			first = odd_max
			odd_max = 0
			odd_map[odd] = 0
			for _, v := range odd_map {
				if v > odd_max {
					odd_max = v
				}
			}
			even_max = 0
			even_map[even] = 0
			for _, v := range even_map {
				if v > even_max {
					even_max = v
				}
			}
			if even_max >= odd_max {
				second = even_max
			} else if odd_max > even_max {
				second = odd_max
			}
			odd_max, even_max = first, second
		} else if even_max > odd_max {
			odd_max = 0
			odd_map[odd] = 0
			for _, v := range odd_map {
				if v > odd_max {
					odd_max = v
				}
			}
		} else {
			even_max = 0
			even_map[even] = 0
			for _, v := range even_map {
				if v > even_max {
					even_max = v
				}
			}
		}
	}

	fmt.Println(n - (odd_max + even_max))
}
