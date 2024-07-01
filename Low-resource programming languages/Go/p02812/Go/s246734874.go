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
		switch c {
		case "A":
			Checker = 1

		case "B":
			if Checker == 1 {
				Checker = 2
			} else {
				Checker = 0
			}

		case "C":
			if Checker == 2 {
				Result++
			}
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
