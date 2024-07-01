package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner

const BufferSize = 1024

func nextInt() int {
	if !sc.Scan() {
		panic(nil)
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	if !sc.Scan() {
		panic(nil)
	}
	return sc.Text()
}

var production bool

func debugf(format string, v ...interface{}) {
	if !production {
		fmt.Printf(format, v...)
	}
}

type sortRunes []rune

func (s sortRunes) Less(i, j int) bool {
	return s[i] < s[j]
}

func (s sortRunes) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s sortRunes) Len() int {
	return len(s)
}

func SortString(s string) string {
	r := []rune(s)
	sort.Sort(sortRunes(r))
	return string(r)
}

type sortStrings []string

func (s sortStrings) Less(i, j int) bool {
	return s[i] < s[j]
}

func (s sortStrings) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s sortStrings) Len() int {
	return len(s)
}

func SortStrings(s []string) []string {
	sort.Sort(sortStrings(s))
	return s
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	/*
		s := make([][]uint8, n)

		for i := range s {
			str := nextString()
			s[i] = make([]uint8, 10)
			for j := 0; j < 10; j++ {
				s[i][j] = str[i] - `a`[0]
			}
		}*/

	s := make([]string, n)

	for i := range s {
		s[i] = SortString(nextString())
	}
	debugf("%v\n", s)
	s = SortStrings(s)

	debugf("%v\n", s)

	prev := ""
	count := 0
	var ans uint64
	for i := range s {
		if prev != s[i] {
			prev = s[i]
			count = 0
		} else {
			count++
			ans += uint64(count)
		}
	}

	_, _ = fmt.Fprintf(writer, "%d", ans)
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
