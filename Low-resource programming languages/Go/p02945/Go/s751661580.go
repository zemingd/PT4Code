package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	// sc.Split(bufio.ScanWords)
	// S := read()
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)
	ans := a + b
	if ans < a-b {
		ans = a - b
	}
	if ans < a*b {
		ans = a * b
	}
	fmt.Printf("%v\n", ans)
}
