package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	n := readInt()
	s := read()
	t := read()

	var b strings.Builder
	for i := 0; i < n; i++ {
		b.WriteByte(s[i])
		b.WriteByte(t[i])
	}
	fmt.Println(b.String())
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

func readInt64() int64 {
	n, _ := strconv.ParseInt(read(), 10, 64)
	return n
}

func readFloat64() float64 {
	n, _ := strconv.ParseFloat(read(), 64)
	return n
}
