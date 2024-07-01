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
	n := nextInt()
	a := make([]int, 5)
	for i := 0; i < 5; i++ {
		a[i] = nextInt()
	}
	sort.Ints(a)
	d := 0
	if n%a[0] > 0 {
		d = a[0] - n%a[0]
	}
	t := (n+d)/a[0] + 4
	fmt.Fprintf(writer, "%d", t)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
