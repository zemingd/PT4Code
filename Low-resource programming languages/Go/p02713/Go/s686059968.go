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

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func GCD(a, b, c int) int {
	return gcd(gcd(a, b), c)
}

func main() {
	n := readInt()

	res := 0
	for a := 1; a <= n; a++ {
		for b := 1; b <= n; b++ {
			for c := 1; c <= n; c++ {
				res = res + GCD(a, b, c)
			}
		}
	}

	fmt.Println(res)
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
