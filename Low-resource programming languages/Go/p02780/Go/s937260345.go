package main

import "fmt"

func sumArray(a []int) int {
	var s int
	for i := 0 ; i < len(a) ; i++ {
		s += a[i]
	}
	return s
}

func main(){
	var n,k,max,max_i,m int
	fmt.Scan(&n,&k)
	p := make([]int, n)
	sort := make([]int, k)
	for i := 0 ; i < n ; i++ {
		fmt.Scan(&p[i])
		if k <= i+1 {
			m = sumArray(p[i-k+1:i+1])
		}
		if m > max {
			max = m
			max_i = i
		}
	}
	sort = p[max_i-k+1:max_i+1]
//fmt.Println(sort)
	var sum float64
	for i := 0 ; i < k ; i++ {
		sum += float64((float64(sort[i])+1.0)/2.0)
//fmt.Println(sum)
	}
	fmt.Println(sum)
}
