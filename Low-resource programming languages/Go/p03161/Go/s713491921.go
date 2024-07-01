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
	var n,k,num int
	var ashiba []int
	var DP []int

	//case when k == 2
	fmt.Scan(&n,&k)
	for i:=0;i<n;i++{
		fmt.Scan(&num)
		ashiba = append(ashiba,num)
		DP = append(DP,1000000000)
	}
	DP[0] = 0
	for i:=1;i<n;i++{
		for j:=0;j<min(i,k)+1;j++{
			DP[i] = min(DP[i-j] + abs(ashiba[i] - ashiba[i-j]),DP[i])
		}
	}
	fmt.Println(DP[n-1])
	//DP[3] = DP[3-2]+(3-(3-2))_move,DP[3-1]+(3-(3-1))_move
	// ...
	//DP[x] = DP[x-k]+abs(DP[x]-DP[x-k]) ... DP[x-3]+abs(DP[x]-DP[(x-3)-k]),DP[x-2]+abs(DP[x]-DP[(x-2)-k]),DP[x-1]+abs(DP[x]-DP[(x-1)-k])
}
