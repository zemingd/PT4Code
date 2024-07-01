package main

import (
	"bufio"
	"io"
	"os"
	"strconv"
)

func main() {
	s := readString()
	k := readInt64()
	b := []byte(s)

	i := int64(0)
	for i < k {
		c := int(b[i] - '0')
		if c != 1 {
			println(c)
			return
		}
		i++
	}

	println(1)
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

/*-------------------init-------------------*/

var (
	readString func() string
)

func init() {
	readString = newReadString(os.Stdin)
}
