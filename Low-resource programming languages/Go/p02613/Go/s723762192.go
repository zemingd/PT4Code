package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	sc = initScanner(os.Stdin)
	n := scanInt(sc)
	s := scanStringSlice(sc, n)

	resolve(s)
}

func resolve(s []string) {
	pt := make([]int, 4)
	for _, v := range s {
		if v == "AC" {
			pt[0]++
		} else if v == "WA" {
			pt[1]++
		} else if v == "TLE" {
			pt[2]++
		} else if v == "RE" {
			pt[3]++
		}
	}

	fmt.Printf("AC x %d\n", pt[0])
	fmt.Printf("WA x %d\n", pt[1])
	fmt.Printf("TLE x %d\n", pt[2])
	fmt.Printf("RE x %d\n", pt[3])
}

// --------------- BASE DEFINITIONS ---------------

const (
	initialBufSize = 100000
	maxBufSize     = 1000000
)

var sc *bufio.Scanner

func initScanner(r io.Reader) *bufio.Scanner {
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
	return sc
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func scanIntSlice(sc *bufio.Scanner, n int) []int {
	is := make([]int, n)
	for i := 0; i < n; i++ {
		is[i] = scanInt(sc)
	}

	return is
}

func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func scanStringSlice(sc *bufio.Scanner, n int) []string {
	ss := make([]string, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		ss[i] = sc.Text()
	}

	return ss
}
