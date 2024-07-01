package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]int, N)
	var tmp int
	for i := 0; i < N; i++ {
		fmt.Scan(&tmp)
		A = append(A, tmp)
	}

	index := 1
	flag := false
	for _, a := range A {
		if a == index {
			flag = true
			index++
		}
	}
	if flag {
		fmt.Println(N - index + 1)
	} else {
		fmt.Println("-1")
	}

}
