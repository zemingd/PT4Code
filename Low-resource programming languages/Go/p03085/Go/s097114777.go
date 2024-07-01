package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var input string
	if sc.Scan() {
		input = sc.Text()
	}

	switch input {
	case "A":
		fmt.Println("T")
	case "T":
		fmt.Println("A")
	case "C":
		fmt.Println("G")
	case "G":
		fmt.Println("C")
	}
}
