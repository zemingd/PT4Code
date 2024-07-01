package main

import "fmt"

func main() {
	var n int64
	fmt.Scanln(&n)

	if n == 1 {
		fmt.Println(0)
		return
	}

	listNumbers := make([]int, n)
	for i := int64(2); i <= n; i++ {
		for n%i == 0 {
			n /= i
			listNumbers[i-2]++
		}
	}

	var prod int
	for _, v := range listNumbers {
		c := 1
		for v-c >= 0 {
			v -= c
			prod++
			c++
		}
	}
	fmt.Println(prod)
}
