package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
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
	k := nextInt()
	sc.Scan()
	in := sc.Text()
	a := make([]int, n+2)
	a[0] = 0
	last := "1"
	ind := 0
	//fmt.Printf("%d, %d, %s\n", n, k, in)
	for i := 0; i < len(in); i++ {
		c := string(in[i])
		if (c != "0" && c != "1") || ind == n || i >= n {
			break
		}
		if last != c {
			ind++
			last = c
		}
		a[ind]++
	}
	//fmt.Printf("%v\n", a)
	sum := 0
	max := 0
	for i := 0; i < n+2; i++ {
		sum += a[i]
		if i > k*2 {
			sum -= a[i-k*2-1]
		}
		if i%2 == 0 && max < sum {
			max = sum
		}
		//fmt.Printf("i: %v, sum: %v, max: %v\n", i, sum, max)
	}
	_, _ = fmt.Fprintf(writer, "%d\n", max)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
