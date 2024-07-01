package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	if len(os.Args) != 3 {
		fmt.Fprintf(os.Stderr, "Wrong number of arguments.")
		os.Exit(1)
	}

	a, _ := strconv.Atoi(os.Args[1])
	b, _ := strconv.Atoi(os.Args[2])

	if a&b&1 == 1 {
		fmt.Printf("Odd")
	} else {
		fmt.Printf("Even")
	}
}