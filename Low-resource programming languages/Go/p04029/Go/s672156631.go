package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var n int
	fmt.Scan(&n)
	fmt.Println((1 + n) * n / 2)
}
