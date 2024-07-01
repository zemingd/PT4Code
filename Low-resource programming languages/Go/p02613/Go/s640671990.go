package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var wtr = bufio.NewWriter(os.Stdout)
	var N int
	fmt.Scan(&N)
	var ac, wa, tle, re int
	var str string
	for i := 0; i < N; i++ {
		fmt.Scan(&str)
		if str == "AC" {
			ac++
		} else if str == "WA" {
			wa++
		} else if str == "TLE" {
			tle++
		} else if str == "RE" {
			re++
		}
	}
	fmt.Fprintf(wtr, "AC x %d\n", ac)
	fmt.Fprintf(wtr, "WA x %d\n", wa)
	fmt.Fprintf(wtr, "TLE x %d\n", tle)
	fmt.Fprintf(wtr, "RE x %d\n", re)

	_ = wtr.Flush()
}
