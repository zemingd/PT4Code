package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc = initScanner(os.Stdin)
	s := scanString(sc)
	fmt.Println(resolve(s))
}

func resolve(s string) int {
	s1 := strings.Split(s, "")
	s2 := strings.Split(s, "")

	var prev string

	cnt0, cnt1 := 0, 0
	// 010101...
	for i:=0;i< len(s)-1;i++ {
		if i==0 && s1[0] != "0" {
			cnt0++
			s1[0] = "0"
		}

		if i !=0 && prev == s1[i] {
			cnt0++

			if prev == "0" {
				s1[i] = "1"
			} else {
				s1[i] = "0"
			}
		}

		prev = s1[i]
	}

	for i:=0;i< len(s)-1;i++ {
		if i==0 && s2[0] != "1" {
			cnt1++
			s2[0] = "1"
		}

		if i !=0 && prev == s2[i] {
			cnt1++

			if prev == "0" {
				s2[i] = "1"
			} else {
				s2[i] = "0"
			}
		}

		prev = s2[i]
	}

	if cnt0 < cnt1 {
		return cnt0
	} else {
		return cnt1
	}
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
