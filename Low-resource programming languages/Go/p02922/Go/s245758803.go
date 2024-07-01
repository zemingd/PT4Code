package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const maxBuf = 200100

var buf []byte = make([]byte, maxBuf)
var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(buf, maxBuf)
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	sc.Scan()
	r, _ := strconv.Atoi(sc.Text())
	return r
}

func readFloat64() float64 {
	sc.Scan()
	r, _ := strconv.ParseFloat(sc.Text(), 64)
	return r
}

/* #### main #### */
func main() {
	a := readInt()
	b := readInt()

	var plug, tap int
	for plug < b {
		if plug == 0 {
			plug += a
		} else {
			plug += a - 1
		}
		tap++
	}

	fmt.Println(tap)
}
