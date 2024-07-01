package main

import (
	"fmt"
)

func removeDuplicated(args []int) []int {
	results := make([]int. 0, len(args))
	encountered := map[int]bool{}
	for i:=0; i<len(args); i++ {
		if !encountered[args[i]] {
			encountered[args[i]] = true
			results = append(results, args[i])
		}
	}
	return results
}

func main(){
	var n int
	fmt.Scan(&n)
	d := make([]int, n)
	for i := 0; i<n; i++ {
		fmt.Scan(&d[i])
	}

	b := removeDuplicated(d)
	fmt.Println(len(b))
}