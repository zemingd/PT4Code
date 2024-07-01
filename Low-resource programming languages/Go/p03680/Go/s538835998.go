package main

import "fmt"

func main() {
	// Code for B - Trained?
	var N int
	fmt.Scanf("%d", &N)

	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &a[i])
	}

	var x int = 1
	var flag int
	var count int = 1
	for i := 0; i < N; i++ {
		x = a[x-1]
		if x == 2 {
			flag = 1
			break
		} else {
			count++
		}
	}

	if flag == 1 {
		fmt.Println(count)
	} else {
		fmt.Println("-1")
	}
}
