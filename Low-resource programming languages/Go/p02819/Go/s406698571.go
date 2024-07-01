package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)

	for i := x; ; i++ {
		if isPrime(i) {
			fmt.Println(i)
			return
		}
	}
}

func isPrime(n int) bool {
	for i := 2; i*i <= n; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}