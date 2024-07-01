package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ps := make([]int, n)
	for i := range ps {
		fmt.Scan(&ps[i])
	}
	
	ret := 0
	for i := 0; i < n-2; i++ {
		if (ps[i] < ps[i+1] && ps[i+1] < ps[i+2]) ||
		   (ps[i+2] < ps[i+1] && ps[i+1] < ps[i]) {
			   ret++
		}
	}
	fmt.Println(ret)
}
