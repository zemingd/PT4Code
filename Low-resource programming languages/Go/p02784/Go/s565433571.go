package main

import (
	"fmt"
	"os"
)

func run() int {
	var h, n int
	fmt.Scanf("%d %d\n", &h, &n)
	var a int
	sum := 0
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a)
		sum += a
	}

	if sum >= h {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

	return 0
}

func main() {
	os.Exit(run())
}
