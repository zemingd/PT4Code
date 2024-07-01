package main

import "fmt"

func main() {
	var X int
	fmt.Scan(&X)
	for x := X; true; x++ {
		isPrime := true
		for i := 2; i*i <= x; i++ {
			if x%i == 0 {
				isPrime = false
				break
			}
		}
		if isPrime {
			fmt.Println(x)
			return
		}
	}
}
