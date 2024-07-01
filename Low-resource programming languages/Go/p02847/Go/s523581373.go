package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	read  = bufio.NewReader(os.Stdin)
	write = bufio.NewWriter(os.Stdout)
)

func yesno(result bool) {
	if result {
		fmt.Fprintln(write, "Yes")
	} else {
		fmt.Fprintln(write, "No")
	}
}

func main() {
	defer write.Flush()

	var s string
	fmt.Fscan(read, &s)

	if s == "SUN" {
		fmt.Fprintln(write, 7)
	} else if s == "MON" {
		fmt.Fprintln(write, 6)
	} else if s == "TUE" {
		fmt.Fprintln(write, 5)
	} else if s == "WED" {
		fmt.Fprintln(write, 4)
	} else if s == "THU" {
		fmt.Fprintln(write, 3)
	} else if s == "FRI" {
		fmt.Fprintln(write, 2)
	} else if s == "SAT" {
		fmt.Fprintln(write, 1)
	}
}
