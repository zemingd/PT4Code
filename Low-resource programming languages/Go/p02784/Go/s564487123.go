package main

import "fmt"

func main() {
	var H int
	var N int
	fmt.Scan(&H, &N)
	sum := 0
	for i := 0; i < N; i++ {
		var tmp int
		fmt.Scan(&tmp)
		sum += tmp
	}

	if H <= sum {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
