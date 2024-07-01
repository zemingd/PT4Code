package main

import (
	"fmt"
	"math"
	"sort"
)

func contain(s []int, e int)bool{
	for _, v := range s{
		if e == v{
			return true
		}
	}
	return false
}

func main() {
	var x, n int
	fmt.Scan(&x, &n)
	nums := make([]int, n)
	for i:=0; i<n; i++{
		fmt.Scan(&nums[i])
	}

	sort.Ints(nums)

	ans := -1
	if len(nums)>0{
		for i:=0; i<102; i++{
			if math.Abs(float64(x) - float64(i)) < math.Abs(float64(x) - float64(ans)) && !contain(nums, i){
				ans = i
			}
		}
	}else{
		ans = x
	}

	fmt.Println(ans)
}