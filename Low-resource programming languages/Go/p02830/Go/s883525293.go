package main

import (
	"fmt"
	"os"
)

func run() int {
	var n int
	var s, t string
	fmt.Scanf("%d\n", &n)
	fmt.Scanf("%s %s\n", &s, &t)

	for i := 0; i < n; i++ {
		fmt.Print(string(s[i]))
		fmt.Print(string(t[i]))
	}
	fmt.Println()

	return 0
}

func main() {
	os.Exit(run())
}
