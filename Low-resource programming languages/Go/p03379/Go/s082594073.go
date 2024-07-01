package main

import (
	"fmt"
	"sort"
)

type Num struct {
	Num   int
	Index int
}

type Nums []Num

func (n Nums) Len() int {
	return len(n)
}

func (n Nums) Swap(i, j int) {
	n[i], n[j] = n[j], n[i]
}

func (n Nums) Less(i, j int) bool {
	return n[i].Num < n[j].Num
}

func main() {
	var N int
	fmt.Scan(&N)
	nums := scanNums(N)
	_nums := Nums{}
	for _, num := range nums {
		_nums = append(_nums, num)
	}
	sort.Sort(nums)
	half := (N + 1) / 2
	numMap := map[int]int{}
	for i := 0; i < N; i++ {
		_half := half
		if i >= half {
			_half = half - 1
		}
		numMap[nums[i].Num] = nums[_half].Num
	}
	for _, num := range _nums {
		fmt.Println(numMap[num.Num])
	}
}

func scanNums(len int) (nums Nums) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, Num{Num: num, Index: i})
	}
	return nums
}