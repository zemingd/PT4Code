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

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	sc.Split(bufio.ScanWords)
	a := make([]int, 5)
	b := make([]int, 5)
	s := 0
	t := 0
	for i := 0; i < 5; i++ {
		a[i] = nextInt()
		b[i] = 10 - a[i]%10
		if b[i] == 10 {
			b[i] = 0
		}
		s += a[i]
		t += b[i]
	}
	sort.Ints(b)
	fmt.Fprintf(writer, "%d", s+t-b[4])
}

func main() {
	answer(os.Stdin, os.Stdout)
}
