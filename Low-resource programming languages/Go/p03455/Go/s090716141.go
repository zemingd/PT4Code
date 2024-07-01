package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	if !scanner.Scan() {
		fmt.Fprintf(os.Stderr, "No stdin passed.")
		os.Exit(1)
	}

	strs := strings.Split(scanner.Text(), " ")
	if len(strs) != 2 {
		fmt.Fprintf(os.Stderr, "Wrong number of arguments")
		os.Exit(1)
	}

	a, _ := strconv.Atoi(strs[0])
	b, _ := strconv.Atoi(strs[1])

	if a&b&1 == 1 {
		fmt.Printf("Odd")
	} else {
		fmt.Printf("Even")
	}
}
