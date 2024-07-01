package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	input := scanString()
	fmt.Println(check(input))
}

// example
func check(s string) (result int) {
	if s == "SUN" {
		return 7
	} else if s == "MON" {
		return 6
	} else if s == "TUE" {
		return 5
	} else if s == "WED" {
		return 4
	} else if s == "THU" {
		return 3
	} else if s == "FRI" {
		return 2
	} else {
		return 1
	}
}

func scanString() string {
	sc.Scan()

	return sc.Text()
}