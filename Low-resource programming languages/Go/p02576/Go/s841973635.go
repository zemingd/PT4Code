package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	buf := []byte{}
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	var N, X, T int = nextInt(), nextInt(), nextInt()
	var result int
	if N%X == 0 {
		result = T * N / X
	} else {
		result = T * (N/X + 1)
	}
	fmt.Println(result)
}
