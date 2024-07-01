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

type luggage struct {
	weight int
	value int
}

func main(){
	var N,W int
	var luggge_list []luggage
	var DP [][]int
	fmt.Scanf("%d %d",&N,&W)
	for i:=0;i<N;i++{
		l := luggage{}
		fmt.Scanf("%d %d",&l.weight,&l.value)
		luggge_list = append(luggge_list,l)
	}

	for i:=0;i<N+1;i++{
		DP = append(DP,make([]int,W+1))
	}

	for i:=1;i<N+1;i++{
		//i 荷物
		for j:=1;j<W+1;j++{
			//j 許容
			if luggge_list[i-1].weight <= j{
				DP[i][j] = max(DP[i-1][j],DP[i-1][j-luggge_list[i-1].weight]+luggge_list[i-1].value)
			}else{
				DP[i][j] = DP[i-1][j]
			}
		}
	}

	fmt.Println(DP[N][W])

}