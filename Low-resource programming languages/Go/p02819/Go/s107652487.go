package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)
	p := nextPrime(x)
	fmt.Println(p)
}

func nextPrime(x int) int {
	for ; ; x++ {
		isPrime := true
		for n := x / 2; n > 1; n-- {
			if x%n == 0 {
				isPrime = false
				break
			}
		}
		if isPrime {
			return x
		}
	}
}
