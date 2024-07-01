package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var nextString func() string

func init() {
	nextString = newReadString(os.Stdin)
}

func main() {
	s := nextString()

	cnt := len(s)
	cnt = calc(cnt, s, 'A')

	s = reversed(s)
	cnt = calc(cnt, s, 'Z')
	fmt.Println(cnt)
}

func reversed(s string) string {
	r := make([]rune, len(s))
	j := 0
	for i := len(s) - 1; i >= 0; i-- {
		r[j] = rune(s[i])
		j++
	}
	return string(r)
}

func calc(cnt int, s string, c rune) int {
	for i := 0; rune(s[i]) != c && cnt >= 0; i++ {
		cnt--
	}
	return cnt
}

func nextInt() (result int) {
	result, _ = strconv.Atoi(nextString())
	return
}

func newReadString(ior io.Reader) func() string {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	return func() string {
		if !r.Scan() {
		}
		return r.Text()
	}
}
