package main

import "fmt"

func main() {
	var A, B, C, X int
	fmt.Scan(&A)
	fmt.Scan(&B)
	fmt.Scan(&C)
	fmt.Scan(&X)
	count := 0
	for i := 0; i <= A; i++ {
		for j := 0; j <= B; j++ {
			for k := 0; k <= C; k++ {
				if 500*i+j*100+k*50 == X {
					count++
				}
			}
		}
	}
	fmt.Println(count)
}
