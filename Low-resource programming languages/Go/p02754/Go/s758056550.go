package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanInt64() int64 {
	scanner.Scan()
	a, err := strconv.ParseInt(scanner.Text(), 10, 64)
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func main() {
	scanner.Split(bufio.ScanWords)

	n := scanInt64()
	a := scanInt64()
	b := scanInt64()
	if n < a+b {
		fmt.Println(a)
	} else {
		x := n / (a + b)
		fmt.Println(x*a + (n - x*(a+b)))
	}
}