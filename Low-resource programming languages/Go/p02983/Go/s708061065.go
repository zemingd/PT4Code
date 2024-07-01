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

func nextString() string {
	sc.Scan()
	return sc.Text()
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
	L := nextInt()
	R := nextInt()
	MIN := 214748347
	for i := L; i < R; i++ {
		for j := i + 1; j <= R; j++ {
			MIN = min(MIN, (i*j)%2019)
		}
	}
	fmt.Println(MIN)
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}
