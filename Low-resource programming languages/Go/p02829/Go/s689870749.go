package main

import (
	"fmt"
	"os"
)

func run() int {
	var a, b int
	fmt.Scanf("%d\n", &a)
	fmt.Scanf("%d\n", &b)

	answer := []int{1, 2, 3}

	for _, o := range answer {
		if o == a || o == b {
			continue
		}

		fmt.Println(o)
		break
	}
	return 0
}

func main() {
	os.Exit(run())
}
