package main

import (
	"fmt"
	"os"
)

func run() int {
	var n int
	fmt.Scanf("%d\n", &n)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a[i])
	}

	approved := true
	for _, i := range a {
		if i%2 == 0 {
			if i%3 != 0 && i%5 != 0 {
				approved = false
				break
			}
		}
	}

	if approved {
		fmt.Println("APPROVED")
	} else {
		fmt.Println("DENIED")
	}
	return 0
}

func main() {
	os.Exit(run())
}
