package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	readInt()
	S, Result, Checker := readString(), 0, 0

	for _, c := range strings.Split(S, "") {
		switch Checker {
		case 0:
			if c == "A" {
				Checker = 1
			} else {
				Checker = 0
			}

		case 1:
			if c == "B" {
				Checker = 2
			} else {
				Checker = 0
			}

		case 2:
			if c == "C" {
				Checker = 0
				Result++
			} else {
				Checker = 0
			}
		}
	}

	fmt.Println(Result)
}

var scanner = bufio.NewScanner(os.Stdin)

func init() {
	//scanner.Split(bufio.ScanWords)
	scanner.Split(bufio.ScanLines)
}

func readInt() int {
	scanner.Scan()
	t, _ := strconv.Atoi(scanner.Text())
	return t
}

func readString() string {
	scanner.Scan()
	return scanner.Text()
}