package main

import (
	"fmt"
)

func main() {

	var K int
	fmt.Scanf("%d", &K)

	var seven int = 7
	var count int = 1
	for {
		if seven%K == 0 {
			fmt.Println(count)
			break
		} else {
			count++
			seven = seven*10 + 7
		}

		if count > 100000000 {
			fmt.Println("-1")
			break
		}
	}
}
