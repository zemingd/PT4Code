package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var sc *bufio.Scanner

var (
	BufferSize = 10 * 10 * 10 * 10 * 10 * 10
)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	if !sc.Scan() {
		panic(nil)
	}
	return sc.Text()
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	in := nextString()
	a := make([]int, len(in))
	last := "1"
	ind := 0
	for i := 0; i < len(in); i++ {
		c := string(in[i])
		if last != c {
			ind++
			last = c
		}
		a[ind]++
	}
	sum := 0
	max := 0
	for i := 0; i < n; i++ {
		sum += a[i]
		if i > k*2 {
			sum -= a[i-k*2-1]
		}
		if i%2 == 0 && max < sum {
			max = sum
		}
	}
	_, _ = fmt.Fprintf(writer, "%d\n", max)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
