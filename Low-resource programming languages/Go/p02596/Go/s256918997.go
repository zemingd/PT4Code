package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const maxBuf = 200100

const debug = false

var buf []byte = make([]byte, maxBuf)
var sc = bufio.NewScanner(os.Stdin)

func init() {
	if debug {
		testFile, err := os.Open("./test/sample-1.in")
		if err == nil {
			sc = bufio.NewScanner(testFile)
		}

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
	K := readInt()

	a := 7 % K

	for i := 1; i < K; i++ {
		if a == 0 {
			fmt.Println(i)
			return
		}
		a = (a*10 + 7) % K
	}
	fmt.Println(-1)
}
