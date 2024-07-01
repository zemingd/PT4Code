package main

import "fmt"

func main() {
	// Code for C - Build Stairs
	var N int
	fmt.Scanf("%d", &N)

	H := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &H[i])
	}

	var temp int = H[N-1]
	var ans int
	var flag int
	for i := N - 2; 0 <= i; i-- {
		A := temp - H[i]

		if A == -1 {
			ans++
		} else if A < -1 {
			flag++
		} else {
			temp = H[i]
		}
	}
	if flag == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
