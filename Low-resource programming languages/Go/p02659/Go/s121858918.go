package main

import (
	"bufio"
	. "fmt"
	"os"
	"strconv"
)

var (
	in  = bufio.NewReader(os.Stdin)
	inn = bufio.NewScanner(os.Stdin)
	out = bufio.NewWriter(os.Stdout)
)

func main() {
	defer out.Flush()
	inn.Buffer([]byte{}, 1000000)
	inn.Split(bufio.ScanWords)
	//prep
	a,b:=rdd(),rdd()
	Fprint(out, int64(a*b))
}

//-------------------template------------------
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func maxll(a, b int64) int64 {
	if a > b {
		return a
	}
	return b
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func minll(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}
func rd() (x int) {
	inn.Scan()
	x, _ = strconv.Atoi(string(inn.Bytes()))
	return x
}
func rdll() (x int64) {
	inn.Scan()
	x, _ = strconv.ParseInt(string(inn.Bytes()), 10, 64)
	return x
}
func rdd() (x float64) {
	inn.Scan()
	x, _ = strconv.ParseFloat(string(inn.Bytes()), 64)
	return x
}
func rds() string {
	inn.Scan()
	return string(inn.Bytes())
}
