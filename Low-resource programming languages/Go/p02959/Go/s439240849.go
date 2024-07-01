package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 10 * 10 * 10 * 10 * 10 * 10 * 10
)

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}

	return sc.Text()
}

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}

	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)
	a := make([]int, n+1, n+1)
	b := make([]int, n+1, n+1)

	for i := 0; i < n+1; i++ {
		a[i] = scanInt(sc)
	}

	for i := 0; i < n; i++ {
		b[i] = scanInt(sc)
	}

	add := 0
	sum := 0
	for i := 0; i < n+1; i++ {
		if a[i] < add {
			sum += a[i]
			add = b[i]
		} else if a[i] < add+b[i] {
			sum += a[i]
			add = add + b[i] - a[i]
		} else {
			sum += add + b[i]
			add = 0
		}
	}

	fmt.Printf("%d\n", sum)
}
