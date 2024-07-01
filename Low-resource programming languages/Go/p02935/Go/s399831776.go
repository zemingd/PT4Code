package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

const mod = 1000000007

// 1MB
const ioBufferSize = 1 * 1024 * 1024

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	n := nextInt()
	v := make([]float64, n)

	for i := 0; i < n; i++ {
		v[i] = float64(nextInt())
	}

	for len(v) > 1 {
		sort.Float64s(v)
		s := (v[0] + v[1]) / 2
		v = v[2:]
		v = append(v, s)
	}

	fmt.Println(v[0])
}
