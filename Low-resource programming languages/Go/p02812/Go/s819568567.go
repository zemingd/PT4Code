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
		switch {
		case Checker == 0 && c == "A":
			Checker = 1

		case Checker == 1 && c == "B":
			Checker = 2

		case Checker == 2 && c == "C":
			Checker = 0
			Result++

		default:
			Checker = 0
		}
	}

	fmt.Println(Result)
}

var scanner = bufio.NewScanner(os.Stdin)

func init() {
	scanner.Split(bufio.ScanWords)
	//scanner.Split(bufio.ScanLines)
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
