package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func ceil(a interface{}) float64 {
	if a, ok := a.(int); ok {

		return math.Ceil(float64(a))
	}
	if a, ok := a.(float64); ok {
		return math.Ceil(float64(a))
	}
	return 0
}

func main() {
	var scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	var A, B int
	if scanner.Scan() {
		A, _ = strconv.Atoi(scanner.Text())
	}
	if scanner.Scan() {
		B, _ = strconv.Atoi(scanner.Text())
	}
	var ans int
	if (B-1)%(A-1) == 0 {
		ans = (B - 1) / (A - 1)
	} else {
		ans = (B-1)/(A-1) + 1
	}

	fmt.Println(ans)
	os.Stdout.Sync()
	/*
		var wtr = bufio.NewWriter(os.Stdout)
		fmt.Fprintln(wtr, ans)
		_ = wtr.Flush()
	*/
}
