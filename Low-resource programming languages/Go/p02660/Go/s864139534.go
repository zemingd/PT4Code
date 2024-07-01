package main

import "fmt"

func main() {
	var n int64
	fmt.Scanln(&n)

	if n == 1 {
		fmt.Println(0)
		return
	}

	listNumbers := make([]int, 1000)
	var c int
	for i := int64(2); i <= n; i++ {
		if n%i != 0 {
			continue
		}

		for {
			n /= i
			listNumbers[c]++

			if n%i != 0 {
				c++
				break
			}
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
