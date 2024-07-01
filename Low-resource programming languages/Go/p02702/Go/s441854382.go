package main

import (
	"fmt"
	"strconv"
)


func main(){
	var s string
	fmt.Scan(&s)
	var dp []int
	n := len(s)
	dp = append(dp,0)
	var sum int
	ten := 1
	for i:=n-1 ; i>=0 ; i-- {
		x,_ := strconv.Atoi(s[i:i+1])
		x = ((x*ten)%2019 + sum%2019)%2019
		ten *= 10
		ten = ten%2019
		sum = x
		dp = append(dp,x)
	}
//fmt.Println(dp)
	ans := make([]int,2019)
	for i:=0 ; i<len(dp) ; i++ {
		ans[dp[i]]++
	}
	var a int
	for i:=0 ; i<2019; i++ {
		a += ans[i]*(ans[i]-1)/2
	}
	fmt.Println(a)
}
