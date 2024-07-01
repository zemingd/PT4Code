package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	d, t, s := readI(), readI(), readI()
	if d <= t*s {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

/*-----------Utils-----------*/

var sc = bufio.NewScanner(os.Stdin)

func init() {
	if len(os.Args) >= 2 {
		if os.Args[1] == "debug" {
			debug()
		}
	}
	const maxBuf = 200100
	var buf []byte = make([]byte, maxBuf)
	sc.Split(bufio.ScanWords)
	sc.Buffer(buf, maxBuf)
}

func debug() {
	testFile, err := os.Open("./test/sample-1.in")
	if err != nil {
		fmt.Fprintln(os.Stderr, "Error : There is no testfile.")
		os.Exit(1)
	}
	sc = bufio.NewScanner(testFile)
}

func readS() string {
	sc.Scan()
	return sc.Text()
}

func readSs(a int) []string {
	b := make([]string, a)
	for i := 0; i < a; i++ {
		b[i] = readS()
	}
	return b
}

func readI() int {
	sc.Scan()
	r, _ := strconv.Atoi(sc.Text())
	return r
}

func readIs(a int) []int {
	b := make([]int, a)
	for i := 0; i < a; i++ {
		b[i] = readI()
	}
	return b
}

func readF() float64 {
	sc.Scan()
	r, _ := strconv.ParseFloat(sc.Text(), 64)
	return r
}

func readFs(a int) []float64 {
	b := make([]float64, a)
	for i := 0; i < a; i++ {
		b[i] = readF()
	}
	return b
}
