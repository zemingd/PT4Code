package main

import (
	"fmt"
)

func main() {

	var N, M int
	fmt.Scanf("%d %d", &N, &M)

	s := make([]int, M)
	c := make([]int, M)
	number := make([]int, N)
	for i := 0; i < N; i++ {
		number[i] = -1
	}

	var flag int = 0
	for i := 0; i < M; i++ {
		fmt.Scanf("%d %d", &s[i], &c[i])
		if number[s[i]-1] == -1 {
			number[s[i]-1] = c[i]
		} else if number[s[i]-1] != -1 && number[s[i]-1] != c[i] {
			flag = 1
		}
	}

	if number[0] == 0 {
		flag = 1
	} else if number[0] == -1 {
		number[0] = 1
	}

	for i := 1; i < N; i++ {
		if number[i] == -1 {
			number[i] = 0
		}
	}

	if flag == 1 {
		fmt.Println("-1")
	} else {
		for i := 0; i < N; i++ {
			fmt.Printf("%d", number[i])
		}
		fmt.Printf("\n")
	}
}
