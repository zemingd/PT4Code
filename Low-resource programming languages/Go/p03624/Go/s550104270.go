package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

var nextString func() string

func init() {
	nextString = newReadString(os.Stdin)
}

func main() {
	s := nextString()
	for i := 'a'; i <= 'z'; i++ {
		if !strings.Contains(s, string(i)) {
			fmt.Println(string(i))
			return
		}
	}
	fmt.Println("None")
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
