package main

import "fmt"

func main() {
	// Code for A - Rainy Season
	var S string
	fmt.Scanf("%s", &S)
	var count int
	var max int = 0
	for i := 0; i < 3; i++ {
		if S[i] == 'R' {
			count++
			if max < count {
				max = count
			}
		} else {
			count = 0
		}
	}

	fmt.Println(max)
}
