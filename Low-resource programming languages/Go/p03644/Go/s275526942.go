package main

import "fmt"

func main() {
	var a int
	count := 0
	result := 1
	fmt.Scan(&a)

	for i := 1; i <= a; i++ {
		countInternal := 0
		numberStore := i
		for numberStore%2 == 0 {
			countInternal++
			numberStore /= 2
		}
		if countInternal > count {
			count = countInternal
			result = i
		}
	}

	fmt.Println(result)
}
