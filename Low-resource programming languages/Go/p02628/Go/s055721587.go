package main

import (
	"fmt"
)
// QuickSort is sort algorithm
func quickSort(values []int) (ret []int) {
	if len(values)<2 {
		return values
	}
	pivot := values[0]
	
	left := []int{}
	right := []int{}
	for _,v := range values[1:] {
		if v>pivot {
			right = append(right, v)
		} else {
			left = append(left, v)
		}
	}
	left = quickSort(left)
	right = quickSort(right)
	ret = append(left, pivot)
	ret = append(ret, right...)
	return 
}	

func main() {
	var n,k int
	fmt.Scan(&n,&k)
	p := make([]int, n)
	for i:=0;i<n;i++ {
		fmt.Scan(&p[i])
	}
	p = quickSort(p)
	sum := 0
	for i:=0;i<k;i++ {
		sum += p[i]
	}
	fmt.Println(sum)
}
