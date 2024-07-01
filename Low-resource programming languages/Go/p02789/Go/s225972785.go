package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	TestCases, OKs := readInt(), readInt()

	if TestCases == OKs {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

var scanner = bufio.NewScanner(os.Stdin)

func init() {
	scanner.Split(bufio.ScanWords)
}

func readInt() int {
	scanner.Scan()
	t, _ := strconv.Atoi(scanner.Text())
	return t
}