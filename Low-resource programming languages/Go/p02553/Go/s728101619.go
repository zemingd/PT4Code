package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	a, b, c, d := nextInt(), nextInt(), nextInt(), nextInt()

	max := a * c
	if a*d > max {
		max = a * d
	}
	if b*c > max {
		max = b * c
	}
	if b*d > max {
		max = b * d
	}
	fmt.Fprintf(out, "%d\n", max)
}
