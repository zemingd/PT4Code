package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

//func nextString() string {
//	sc.Scan()
//	return sc.Text()
//}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextInt64() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	n := nextInt()
	k := nextInt64()
	p := make([]int, n, n)
	c := make([]int64, n, n)
	c_sorted := make([]int64, n, n)

	for i := 0; i < n; i++ {
		p[i] = nextInt()
	}

	for i := 0; i < n; i++ {
		c[i] = nextInt64()
	}

	i := p[0]
	for ;; {
		c_sorted[i - 1] = c[i - 1]
		i = p[i - 1]
		if i == p[0] { break }
	}

	numCycle := k / int64(n)
	offset := k % int64(n)
	sumAll := int64(0)
	sum := int64(0)
	max := int64(0)

	for i := 0; i < n; i++ {
		sumAll += c_sorted[i]
	}

	for i := 0; int64(i) < offset; i++ {
		sum += c_sorted[i]
	}

	for i := 0; i < n; i++ {
		diff := c_sorted[(int64(i) + offset) % int64(n)] - c_sorted[i]
		sum += diff
		if diff > 0 {
			max = sum
		}
	}

	max += sumAll * numCycle

	fmt.Println(max)
}
