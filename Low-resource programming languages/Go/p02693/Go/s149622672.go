package main

import "fmt"

func main() {
	var (
		K, A, B int
		ok bool
	)
	fmt.Scan(&K, &A, &B)

	for i := A; i <= B; i++ {
		if i % K == 0 {
			ok = true
		}
	}

	if ok {
		fmt.Println("OK")
	} else {
		fmt.Println("NG")
	}
}