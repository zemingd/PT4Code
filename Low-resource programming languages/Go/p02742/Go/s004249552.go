package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const maxBuf = 200100

var debug = false

var buf []byte = make([]byte, maxBuf)
var sc = bufio.NewScanner(os.Stdin)

func init() {
	if debug {
		testFile, _ := os.Open("./test/sample-2.in")
		sc = bufio.NewScanner(testFile)
	}
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
	H := readInt()
	W := readInt()

	odd := W/2 + W%2
	even := W / 2

	if H == 1 || W == 1 {
		fmt.Println(1)
		return
	}

	if H%2 == 0 {
		fmt.Println((even + odd) * (H / 2))
	} else {
		fmt.Println((even+odd)*(H/2) + odd)
	}
}
