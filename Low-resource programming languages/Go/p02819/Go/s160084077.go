package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)
	m := sieve_of_eratosthenes()

	for i:=0; i<len(m); i++ {
		if x <= m[i] {
			fmt.Println(m[i])
			return
		}
	}
}


func sieve_of_eratosthenes() []int {
	MAX := 101010
	is_prime := make([]int, MAX)
	for i:=0; i<MAX; i++ {
		is_prime[i] = 1
	}
	is_prime[0] = is_prime[1] = 0

	for i:=2; i<MAX; i++ {
		if !is_prime[i] {
			continue
		}
		for j:=i*2; j<MAX; j+=i {
			is_prime[j] = 0
		}
	}

	return is_prime
}