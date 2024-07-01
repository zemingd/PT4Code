package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scan = bufio.NewScanner(os.Stdin)

func main() {
	scanWords()
	a := scanNextInt()
	b := scanNextInt()
	c := scanNextInt()

	printCompareRusult(a, b, c)
}

func scanWords() {
	scan.Split(bufio.ScanWords)
}

func scanNextInt() int {
	scan.Scan()

	inputInt, err := strconv.Atoi(scan.Text())
	if err != nil {
		panic(err)
	}

	return inputInt
}

func printCompareRusult(a, b, c int) {
	if a < b && b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

