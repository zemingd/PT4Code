package main

import "fmt"

func main() {
	var (
		S string
	)
	fmt.Scanf("%s\n", &S)
	
	var zero, one int
	for _, str := range S {
		if fmt.Sprintf("%c",str) == "0" {
			zero ++
		} else {
			one ++
		}
	}
	result := one
	if zero < one {
		result = zero
	}

	fmt.Println(result * 2)
}