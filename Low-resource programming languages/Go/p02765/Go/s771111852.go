package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, r := ScanInt64(), ScanInt64()
	inner := int64(0)
	if n >= 10 {
		inner = r
	} else {
		inner = r + 100*(10-n)
	}
	fmt.Println(inner)
}

/*********************** I/O ***********************/

var in *bufio.Scanner

func init() {

	in = bufio.NewScanner(os.Stdin)
	in.Buffer(make([]byte, 1024), int(1e+9))
	in.Split(bufio.ScanWords)

	writer := bufio.NewWriter(os.Stdout)
	go func() {
		defer writer.Flush()

	}()
}

func ScanWord() string { in.Scan(); return in.Text() }
func ScanInt() int     { i, _ := strconv.Atoi(ScanWord()); return i }
func ScanInt64() int64 { i, _ := strconv.ParseInt(ScanWord(), 10, 64); return i }
