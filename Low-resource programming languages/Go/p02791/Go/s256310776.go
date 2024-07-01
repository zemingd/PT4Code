package main

import "fmt"

func main(){
	var n int
	fmt.Scan(&n)
	p := make([]int, n)
	for i := 0 ; i < n ; i++ {
		fmt.Scan(&p[i])
	}
	count := 1
	for i := 1 ; i < n ; i++ {
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
