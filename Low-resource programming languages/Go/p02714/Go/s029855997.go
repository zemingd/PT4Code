package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var (
	readString func() string
)

func init() {
	readString = newReadString(os.Stdin)
}

func main() {
	n := readInt()
	s := readString()

	c := 0
	for i := 0; i < n; i++ {
		for j := i; j < n; j++ {
			for k := j; k < n; k++ {
				if j-i == k-j {
					continue
				}
				if s[i] != s[j] && s[i] != s[k] && s[j] != s[k] {
					c = c + 1
				}
			}
		}
	}
	fmt.Println(c)
}

/*-------------------inputs-------------------*/

func readInt() int {
	return int(readInt64())
}

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 0, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readf() float64 {
	f, err := strconv.ParseFloat(readString(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

func newReadString(ior io.Reader) func() string {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	return func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
}

/*-------------------utilities-------------------*/

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func subL(list []int) []int {
	sl := make([]int, len(list)-1)
	for i := range list {
		if i == len(list)-1 {
			continue
		}
		sub := list[i+1] - list[i]
		sl[i] = sub
	}
	return sl
}
