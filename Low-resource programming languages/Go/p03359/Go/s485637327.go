package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const maxBuf = 300100

var buf []byte = make([]byte, maxBuf)
var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Buffer(buf, maxBuf)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	b, _ := strconv.Atoi(sc.Text())

	if b >= a {
		fmt.Println(a)
	} else {
		fmt.Println(a - 1)
	}
}
