package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	sc = initScanner(os.Stdin)
	s := scanString(sc)

	fmt.Println(resolve(s))
}

func resolve(s string) string {
	ss := strings.Split(s, "")
	sort.Strings(ss)

	az := strings.Split("abcdefghijklmnopqrstuvwxyz", "")

	for _, v := range az {
		if !contains(v, ss) {
			return v
		}
	}
	return "None"
}

func contains(c string, s []string) bool {
	for _, v := range s {
		if v == c {
			return true
		}
	}
	return false
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
