package main

import (
	"fmt"
)

func main(){
	var n int
	fmt.Scan(&n)

	ans := make(map[int]int)

	for i := 1; i <= 100;i++ {
		for j := 1; j <= 100; j++ {
			for k := 1; k <= 100; k++ {
				v := i*i +j*j+k*k +i*j+j*k+k*i
				if v <= n {
					ans[v]++
				}
			}
		}
	}
	for i := 1; i <=n ;i++ {
		fmt.Println(ans[i])
	}
}



