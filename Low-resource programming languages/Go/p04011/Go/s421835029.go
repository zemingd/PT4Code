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

	n := nextInt()
	k := nextInt()
	x := nextInt()
	y := nextInt()

	if n <= k {
		fmt.Println(n * x)
	} else {
		fmt.Println((k * x) + (n-k)*y)
	}
}
