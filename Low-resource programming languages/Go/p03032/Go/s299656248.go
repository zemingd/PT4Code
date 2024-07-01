package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner

const BufferSize = 1024

func nextInt() int {
	if !sc.Scan() {
		panic(nil)
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func min(x int, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}

func max(x int, y int) int {
	if x > y {
		return x
	} else {
		return y
	}
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	v := make([]int, n)
	for i := range v {
		v[i] = nextInt()
	}
	//fmt.Printf("v: %v\n", v)

	minK := min(n, k)

	ans := 0
	for r := 0; r < minK; r++ {
		for l := 0; l < n-r; l++ {
			t := make([]int, 0, r+l)
			t = append(t, v[0:l]...)
			t = append(t, v[len(v)-r:len(v)]...)
			sort.Ints(t)
			//fmt.Printf("t: %v\n", t)

			remainingK := k - r - l
			sum := 0
			for _, v := range t {
				if v < 0 && remainingK > 0 {
					remainingK--
					continue
				}
				sum += v
			}
			ans = max(ans, sum)
		}
	}

	_, _ = fmt.Fprintf(writer, "%d", ans)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
