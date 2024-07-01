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
	n := SingleInt()

	vehicles := ScanNums(5)
	sort.Sort(Int64Slice(vehicles))
	t := int64(4)

	d := float64(n) / float64(vehicles[0])
	re := int64(math.Ceil(d))

	fmt.Printf("%#v\n", t+re)
}

func SingleInt() int64 {
	var n int64
	fmt.Scan(&n)
	return n
}

func ScanNums(len int) (nums []int64) {
	var num int64
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
