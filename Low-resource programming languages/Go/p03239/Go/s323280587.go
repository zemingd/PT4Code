package main

import "fmt"

func main() {
	// Code for B - Time Limit Exceeded
	var N, T int
	fmt.Scanf("%d %d", &N, &T)

	var c, t int
	var min int = 1000
	var flag int = 0
	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d", &c, &t)
		if t <= T {
			flag = 1
			if min >= c {
				min = c
			}
		}
	}

	if flag == 1 {
		fmt.Println(min)
	} else {
		fmt.Println("TLE")
	}
}
