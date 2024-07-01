package main

import (
	"fmt"
	"math"
	"reflect"
)

func main() {
	R := 0
	L := 1

	var s string
	fmt.Scan(&s)

	pattern := make([]int, len(s))
	for i, c := range s {
		if c == 'R' {
			pattern[i] = R
		} else {
			pattern[i] = L
		}
	}

	old := make([]int, len(s))
	children := make([]int, len(s))
	for i := 0; i < len(s); i++ {
		children[i] = 1
	}

	loopCnt := 0
	for ;; {
		loopCnt++

		after := make([]int, len(s))

		for i, num := range children {
			if pattern[i] == R {
				after[i+1] += num
			} else {
				after[i-1] += num
			}
		}

		if reflect.DeepEqual(children, after) {
			copy(children, after)
			break
		} else if reflect.DeepEqual(old, after) {
			if loopCnt % 2 == 0 {
				copy(children, after)
			}
			break
		}

		copy(old, children)
		copy(children, after)
	}

	for i, num := range children {
		if i != 0 {
			fmt.Print(" ")
		}
		fmt.Print(num)
	}

	fmt.Println("")
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func scanStrings(len int) (strings []string) {
	var str string
	for i := 0; i < len; i++ {
		fmt.Scanf("%s", &str)
		strings = append(strings, str)
	}
	return
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func strSearch(a []string, b string) bool {
	for i := 0; i < len(a); i++ {
		if a[i] == b {
			return true
		}
	}
	return false
}
