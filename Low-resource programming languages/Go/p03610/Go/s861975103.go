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
	for i := 0; i < len(s); i += 2 {
		fmt.Print(string(s[i]))
	}
	fmt.Println()
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
