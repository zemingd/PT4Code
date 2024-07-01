package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	as := make([]int, n)
	indexOfOne := -1
	for i := range as {
		fmt.Scan(&as[i])
		if as[i] == 1 {
			indexOfOne = i
		}
	}

	count := (len(as[:indexOfOne])+(k-1)-1)/(k-1) + (len(as[indexOfOne+1:])+(k-1)-1)/(k-1)
	fmt.Println(count)
}
