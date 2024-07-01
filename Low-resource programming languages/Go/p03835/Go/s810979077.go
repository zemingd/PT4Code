package main

import "fmt"

func main() {
	// Code for B - Sum of Three Integers
	var K, S int
	fmt.Scanf("%d %d", &K, &S)

	var count int = 0
	for i := 0; i <= K; i++ {
		for j := 0; j <= K; j++ {
			k := S - i - j
			if 0 <= k && k <= K {
				count++
			}
			//for k := j; k <= K; k++ {
			//if i+j+k == S {
			/*
				if i == j && j == k && k == i {
					count++
				} else if i != j && j != k && k != i {
					count = count + 6
				} else {
					count = count + 3
				}
			*/
			//}
			//}
		}
	}
	fmt.Println(count)
}
