package main

import "fmt"

func main() {
	var X int
	fmt.Scan(&X)
	a := make([]bool, 1000000)

	for i := X; i < 1000000; i++ {
		if a[i] {
			continue
		}
		if IsPrime(i) {
			fmt.Println(i)
			return
		} else {
			a[i] = true
			for j := 2; i*j <= 100000; j++ {
				a[i*j] = true
			}
		}
	}
}

func IsPrime(n int) bool {
	for i := 2; i*i <= n; i++ {
		if n%i == 0 {
			return false
		}
	}
	return n != 1
}
