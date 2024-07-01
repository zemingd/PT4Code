package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

func main() {
	defer stdout.Flush()
	exps := make(map[int]bool)
	for i := 1; i <= 1000; i++ {
		for j := 2; j <= 10; j++ {
			x := i
			for k := 1; k < j; k++ {
				x *= i
			}
			if x > 1000 {
				break
			}
			exps[x] = true
		}
	}
	a := make([]int, 0, 1000)
	for k, _ := range exps {
		a = append(a, k)
	}
	sort.Ints(a)

	X := readInt()
	for i, e := range a {
		if e > X {
			println(a[i-1])
			return
		}
	}
	println(1000)
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
