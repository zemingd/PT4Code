package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func calc(lW, lE, rW, rE int) int {
	return lW + rE
}

func main() {
	defer stdout.Flush()
	_ = readInt()
	s := readString()
	rW := 0
	rE := 0
	for _, r := range s {
		if r == 'W' {
			rW++
		} else if r == 'E' {
			rE++
		} else {
			panic("not W and E")
		}
	}
	lW := 0
	lE := 0
	min := 3*100000 + 100
	for _, r := range s {
		if r == 'W' {
			rW--
		} else if r == 'E' {
			rE--
		}
		x := calc(lW, lE, rW, rE)
		if x < min {
			min = x
		}
		if r == 'W' {
			lW++
		} else if r == 'E' {
			lE++
		}
	}
	println(min)
}

var (
	readString func() string
	stdout     *bufio.Writer
)

func init() {
	readString = newReadString(os.Stdin)
	stdout = bufio.NewWriter(os.Stdout)
}

func newReadString(ior io.Reader) func() string {
	r := bufio.NewScanner(ior)
	buf := make([]byte, 0, 301000)
	r.Buffer(buf, 301000)
	r.Split(bufio.ScanWords)

	return func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
}

func readInt() int {
	i, err := strconv.Atoi(readString())
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readIntSlice(n int) []int {
	b := make([]int, n)
	for i := 0; i < n; i++ {
		b[i] = readInt()
	}
	return b
}

func readLengthAndSlice() []int {
	n := readInt()
	return readIntSlice(n)
}

func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(stdout, f, args...)
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(stdout, args...)
}
