package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	b string
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	b = scanner.Text()

	if b == "A" {
		fmt.Println("T")
	}
	if b == "C" {
		fmt.Println("G")
	}
	if b == "G" {
		fmt.Println("C")
	}
	if b == "T" {
		fmt.Println("A")
	}
}
