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

	X, Y := nextInt(), nextInt()
	x_mult2 := 4*X - Y
	y_mult2 := Y - 2*X
	if x_mult2 < 0 || y_mult2 < 0 || x_mult2%2 == 1 || y_mult2%2 == 1 {
		fmt.Fprintln(out, "No")
	} else {
		fmt.Fprintln(out, "Yes")
	}
}
