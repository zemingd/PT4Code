package main

import(
	"fmt"
)

func quickSort(values []int) (ret []int) {
	if len(values)<2 {
		return values
	}
	pivot := values[0]
	
	left := []int{}
	right := []int{}
	for _,v := range values[1:] {
		if v<pivot {
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
	var n int 
	fmt.Scan(&n)
	a := make([]int, n)
	for i:=0; i<n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		a[i] = tmp
	}
	a = quickSort(a)

	sum := 0
	for i:=1;i<len(a);i++ {

		sum += a[i-1]
	}
	fmt.Println(sum)
}