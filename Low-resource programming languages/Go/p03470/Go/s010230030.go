package main

import "fmt"

func searchArray(t int, a []int) bool {
	for i := 0 ; i < len(a) ; i++ {
		if a[i] == t {
			return false
		}
	}
	return true
}

func main() {
	var n,temp,count int
	fmt.Scan(&n)
	a := make([]int,n)
	for i := 0 ; i < n ; i++ {
		fmt.Scan(&temp)
		if searchArray(temp,a) {
			a[count] = temp
			count++
		}
	}
	fmt.Println(count)
}
