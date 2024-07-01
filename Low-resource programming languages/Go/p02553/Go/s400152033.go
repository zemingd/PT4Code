package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	a := nextInt()
	b := nextInt()
	c := nextInt()
	d := nextInt()
	fmt.Println(max(max(max(a*c, a*d), b*c), b*d))
}

func max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
