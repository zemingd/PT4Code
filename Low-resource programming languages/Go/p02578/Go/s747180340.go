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

	N := nextInt()
	h := 0
	total := 0
	for i := 0; i < N; i++ {
		a := nextInt()
		if a < h {
			total += h - a
		} else {
			h = a
		}
	}
	fmt.Fprintf(out, "%d\n", total)
}
