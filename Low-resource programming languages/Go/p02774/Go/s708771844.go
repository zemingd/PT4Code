package main

import "fmt"
import "sort"
import "math"

func main() {
	var n, k int64
	fmt.Scan(&n, &k)
	inputs := make([]int, n)
	for i := 0; i < int(n); i++ {
		fmt.Scan(&inputs[i])
	}
	sort.Ints(inputs)
	// count
	var left = int64(math.MinInt64)
	var right = int64(math.MaxInt64)
	for left+1 < right {
		var x = (left + right) / 2
		var total = int64(0)
		for i := 0; i < int(n); i++ {
			if inputs[i] < 0 {
				var leftInner = int64(-1)
				var rightInner = int64(n)
				for leftInner+1 < rightInner {
					c := (leftInner + rightInner) / 2
					if int64(inputs[c]*inputs[i]) < x {
						rightInner = c
					} else {
						leftInner = c
					}
				}
				total += (n - rightInner)
			} else {
				var leftInner = int64(-1)
				var rightInner = int64(n)
				for leftInner+1 < rightInner {
					c := (leftInner + rightInner) / 2
					if int64(inputs[c]*inputs[i]) < x {
						leftInner = c
					} else {
						rightInner = c
					}
				}
				total += rightInner
			}
			if int64(inputs[i]*inputs[i]) < x {
				total = total - 1
			}
		}
		total = total / 2
		ok := total < k
		if ok {
			left = x
		} else {
			right = x
		}
	}
  	fmt.Println(left)
}