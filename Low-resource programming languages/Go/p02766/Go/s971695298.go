package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

const (
	MX_INT int64 = math.MaxInt64
	MN_INT int64 = math.MinInt64
)

func main() {
    n, k := ScanInt64(), ScanInt64()
	s := strconv.FormatInt(n, int(k))
	fmt.Println(len(s))
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

func ScanWord() string {in.Scan(); return in.Text() }
func ScanInt() int {i, _ := strconv.Atoi(ScanWord()); return i}
func ScanInt64() int64 {i, _ := strconv.ParseInt(ScanWord(), 10, 64); return i}
