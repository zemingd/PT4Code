package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var a, b, t int
	fmt.Scan(&a, &b, &t)
	fmt.Println((t / a) * b)
}