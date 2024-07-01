package main

import "fmt"

func main(){
	var n,max_num,ans int
	fmt.Scan(&n)
	a := make([]int,n+1)
	for i:=1 ; i<=n ; i++ {
		fmt.Scan(&a[i])
		if max_num < i-a[i] {
			max_num = i-a[i]
		}
	}
	minus_temp := make([]int,max_num+1)
	plus_temp := make([]int,max_num+1)
	for i:=1;i<=n;i++{
		if i-a[i] >= 0 {
			minus_temp[i-a[i]]++
		}
		if i+a[i] <= max_num{
			plus_temp[i+a[i]]++
		}
	}
	for i:=0 ; i<=max_num ; i++{
		if minus_temp[i] + plus_temp[i] >= 2 {
			ans += minus_temp[i] * plus_temp[i]
		}
	}
	fmt.Println(ans)
}
