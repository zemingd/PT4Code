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
	n := nextInt()
	for i := 1; ; i *= 2 {
		if i > n {
			fmt.Println(i / 2)
			break
		}
	}
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
