package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func intScanner() int {
	n, _ := strconv.Atoi(Scanner())
	return n
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	a, b := intScanner(), intScanner()
	x := smaller(b-1, intScanner())
	fmt.Println((a * x) / b)
}
func smaller(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}
