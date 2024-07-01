package main

import (
	"fmt"
	"math"
)

func main(){
	var k,n,temp int
	fmt.Scan(&k,&n)
	a := make([]int,n)
	for i:= 0 ; i<n ; i++ {
		fmt.Scan(&a[i])
	}
	if a[n-1]-a[0] <= k/2 {
		fmt.Println(a[n-1]-a[0])
	} else {
		ans := k
		for i:=0 ; i<n/2+1 ; i++ {
			for j:=i+1 ; j<n; j++ {
				if a[j] - a[i] == k/2 {
					ans = 0
					break
				} else if a[j] - a[i] > k/2 {
					temp_a := int(math.Abs(float64(a[j]-a[i]+k/2)))
					temp_b := int(math.Abs(float64(a[j-1]-a[i]+k/2)))
					if temp_a < temp_b {
						temp = temp_a
					} else {
						temp = temp_b
					}
					if temp < ans {
						ans = temp
					}
				}
			}
			if ans == 0{
				fmt.Println(k/2)
				break
			}
		}
	}
}
