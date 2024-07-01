package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	n := readInt()
	if n%2 != 0 {
		fmt.Println(0)
		return
	}

	c := 0
	for x := 10; n/x > 0; x *= 5 {
		c += n / x
	}
	fmt.Println(c)
}

var stdin *bufio.Scanner

func read() string {
	if stdin == nil {
		stdin = bufio.NewScanner(os.Stdin)
		stdin.Split(bufio.ScanWords)
		stdin.Buffer(make([]byte, bufio.MaxScanTokenSize), int(math.MaxInt32))
	}
	stdin.Scan()
	return stdin.Text()
}

func readInt() int {
	n, _ := strconv.Atoi(read())
	return n
}

func readFloat64() float64 {
	n, _ := strconv.ParseFloat(read(), 64)
	return n
}
