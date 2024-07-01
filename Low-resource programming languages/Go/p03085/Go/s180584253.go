package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() int {
	sc.Scan()
	data, _ := strconv.Atoi(sc.Text())
	return data
}

func main() {
	sc.Scan()
	input := sc.Text()

	switch input {
	case "A":
		fmt.Print("T")
	case "T":
		fmt.Print("A")
	case "C":
		fmt.Print("G")
	case "G":
		fmt.Print("C")
	}
}