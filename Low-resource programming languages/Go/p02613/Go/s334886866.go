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
	ac, wa, tle, re := 0, 0, 0, 0
	for i := 0; i < N; i++ {
		s := next()
		if s == "AC" {
			ac++
		} else if s == "WA" {
			wa++
		} else if s == "TLE" {
			tle++
		} else if s == "RE" {
			re++
		}
	}

	fmt.Fprintf(out, "AC x %d\n", ac)
	fmt.Fprintf(out, "WA x %d\n", wa)
	fmt.Fprintf(out, "TLE x %d\n", tle)
	fmt.Fprintf(out, "RE x %d\n", re)
}
