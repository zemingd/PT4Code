package main

import "fmt"

func f(a int, b int) int {
	largeValue := 0
	if a > b {
		largeValue = a
	} else {
		largeValue = b
	}
	result := 0
	for {
		largeValue = int(largeValue / 10)
		result = result + 1
		if largeValue < 1 {
			break
		}
	}
	return result
}

func min(a int, b int) int {
	if a > b {
		return b
	}
	return a
}

func main() {
	var n int
	fmt.Scan(&n)
	result := f(n, n)
	for i := 1; i <= (n / i); i++ {
		if n%i == 0 {
			tmp := f(i, n/i)
			result = min(result, tmp)
		}
	}
	fmt.Println(result)
}
