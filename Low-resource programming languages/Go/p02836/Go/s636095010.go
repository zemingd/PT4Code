package main

import (
	"fmt"
	"os"
)

func run() int {
	var s string
	fmt.Scanf("%s\n", &s)

	var count int
	for i := 0; i < (len(s) / 2); i++ {
		if s[i] != s[len(s)-(i+1)] {
			count++
		}
	}

	fmt.Println(count)

	return 0
}

func main() {
	os.Exit(run())
}
