package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func next() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func main() {
	scanner.Split(bufio.ScanWords)

	l := nextInt()
	r := nextInt()

	if r-l <= 2017 {
		fmt.Println((l * (l + 1)) % 2019)
	} else {
		fmt.Println(0)
	}
}
