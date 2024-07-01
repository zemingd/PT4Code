package main

import "fmt"

//繰り返し自乗法
func pow(num int, time int) int {
	res := 1
	for time > 0 {
		if time%2 != 0 {
			res = res * num
		}
		num = num * num
		time /= 2
	}
	return res
}

//最大値
func Max(nums ...int) int {
	if len(nums) == 0 {
		panic("min() requires at least one arguments.")
	}
	res := nums[0]
	for _, val := range nums {
		if res < val {
			res = val
		}
	}
	return res
}

func solve(n int) int {
	var cnt int
	for ; n%2 == 0; n /= 2 {
		cnt++
	}
	return cnt
}

func main() {
	var n, ans int
	fmt.Scan(&n)
	for i := 1; i <= n; i++ {
		ans = Max(ans, solve(i))
	}
	fmt.Println(pow(2,ans))
}
