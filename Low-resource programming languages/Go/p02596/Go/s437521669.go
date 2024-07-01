package main

import (
	"fmt"
)

func main() {

	var K int
	fmt.Scanf("%d", &K)

	var seven int = 0
	var count int = 1
	for {
		seven = (seven*10 + 7) % K
		if seven == 0 {
			fmt.Println(count)
			break
		} else {
			count++
		}

		if count > 10000000 {
			fmt.Println("-1")
			break
		}
	}
}
