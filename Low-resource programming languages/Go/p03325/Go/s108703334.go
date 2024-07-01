package main

import "fmt"

func main() {
	// Code for C - *3 or /2
	var N int
	fmt.Scanf("%d", &N)

	var count, a int
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &a)
		for {
			if a%2 == 0 {
				a = a / 2
				count++
			} else {
				break
			}
		}
	}

	fmt.Println(count)
}
