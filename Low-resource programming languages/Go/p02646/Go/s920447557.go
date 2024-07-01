package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 1e4
	maxBufSize     = 1e10
)

var sc = bufio.NewScanner(os.Stdin)

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

func nextFloat() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)

	a, v := nextInt(), nextInt()
	b, w := nextInt(), nextInt()
	t := nextInt()

	aftera := a + v*t
	afterb := b + w*t

	if aftera >= afterb {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

func intSlicePrint(el ...int) {
	first := true
	for _, v := range el {
		if v < 0 {
			continue
		}
		if !first {
			fmt.Printf(" ")
		}
		fmt.Printf("%v", v)
		first = false
	}
	fmt.Println("")
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
