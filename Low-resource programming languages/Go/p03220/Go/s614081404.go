package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
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
	n, t, a := nextInt(), float64(nextInt()), float64(nextInt())
	h := make([]float64, n)

	for i := 0; i < n; i++ {
		h[i] = float64(nextInt())
	}

	nearest := 0
	div := 10000.0
	for i := 0; i < n; i++ {
		temp := t - h[i]*0.006
		if math.Abs(a-temp) < div {
			div = math.Abs(a - temp)
			nearest = i
		}
	}
	fmt.Println(nearest + 1)
}
