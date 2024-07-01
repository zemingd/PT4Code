package main

import "fmt"

func main(){
	var n int
	fmt.Scan(&n)
	p := make([]int, n)
	var dec int
	f := true
	for i := 0 ; i < n ; i++ {
		fmt.Scan(&p[i])
		if f && (i == 0 || p[i-1] >= p[i]) {
			dec++
		} else {
			f = false
		}
	}
	count := dec
	for i := dec ; i < n ; i++ {
		var flag bool
		for j := 0 ; j < i ; j++ {
			if p[j] < p[i] {
				flag = true
				break
			}
		}
		if !flag {
			count++
		}
	}
	fmt.Println(count)
}
