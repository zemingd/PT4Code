package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	n, k := oneInt(), oneInt()

	sss := oneStr()

	ans := calc(sss, n, k)
	fmt.Println(ans)

}

type runLength struct {
	cnt int
	s   string
}

func calc(sss string, n, k int) int {
	nums := []runLength{}

	tmp := ""
	for _, s := range sss {
		if tmp == "" {
			tmp = string(s)
			nums = append(nums, runLength{1, tmp})
		} else {
			if tmp == string(s) {
				nums[len(nums)-1].cnt++
			} else {
				tmp = string(s)
				nums = append(nums, runLength{1, tmp})
			}
		}
	}

	nums = append(nums, runLength{0, "1"})

	sums := []int{0}

	for i, n := range nums {
		sums = append(sums, sums[i]+n.cnt)
	}

	ans := -1
	right := 0

	for left := 0; left < len(sums)-1-right; left++ {
		right = min(len(sums)-1, 2*k+1)
		if nums[left].s == "0" {
			right = min(len(sums)-1, 2*k)
		}

		ans = max(ans, sums[right+left]-sums[left])
	}

	//fmt.Println(nums)
	//fmt.Println(sums)

	return ans
}

func oneInt() int {
	var a int
	fmt.Scan(&a)
	return a
}
func oneStr() string {
	var a string
	fmt.Scan(&a)
	return a
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
