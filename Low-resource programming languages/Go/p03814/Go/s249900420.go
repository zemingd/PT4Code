package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var nextStr func() string

func init() {
	nextStr = newReadString(os.Stdin)
}

func main() {
	s := nextStr()
	n := len(s)
	cnt := n

	for i := 0; i < n && rune(s[i]) != 'A'; i++ {
		cnt--
	}
	for i := n - 1; i >= 0 && rune(s[i]) != 'Z'; i-- {
		cnt--
	}

	fmt.Println(cnt)
}

func nextInt() (result int) {
	result, _ = strconv.Atoi(nextStr())
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
