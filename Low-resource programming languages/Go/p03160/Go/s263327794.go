package main

import (
	"fmt"
	"math"
)

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

func main(){
	var n,num int
	var ashiba []int
	var DP []int

	fmt.Scan(&n)
	for i:=0;i<n;i++{
		fmt.Scan(&num)
		ashiba = append(ashiba,num)
		DP = append(DP,10000000000000000000000000)
	}
	DP[0] = 0
	DP[1] = abs(ashiba[1] - ashiba[0])
	for i:=2;i<n;i++{
		DP[i] = min(DP[i],DP[i-1]+abs(ashiba[i-1]-ashiba[i]),DP[i-2]+abs(ashiba[i-2]-ashiba[i]))
	}
	fmt.Println(DP[n-1])
}