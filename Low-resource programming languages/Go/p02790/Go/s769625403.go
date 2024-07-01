package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var buf = bufio.NewScanner(os.Stdin)

func scanInt() int {
	buf.Scan()
	i, _ := strconv.Atoi(buf.Text())
	return i
}

func scanInts(n int) []int {
	a := make([]int, n)
	for k, _ := range a {
		a[k] = scanInt()
	}
	return a
}

func main() {
	buf.Split(bufio.ScanWords)

	a := scanInt()
	b := scanInt()

	result := ""
	if a < b {
		aString := strconv.Itoa(a)
		for i := 0; i < b; i++ {
			result += aString
		}
	} else {
		bString := strconv.Itoa(b)
		for i := 0; i < a; i++ {
			result += bString
		}
	}

	fmt.Printf("%s", result)
}
