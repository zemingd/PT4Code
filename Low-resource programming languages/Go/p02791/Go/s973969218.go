package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

//=====I/O=====

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanInt64() int64 {
	sc.Scan()
	a,_ := strconv.ParseInt(sc.Text(),10,64)
	return a
}

func scanFloat64() float64 {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return float64(a)
}

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ { res[i] = scanInt() }
	return res
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func printInts(a ...int) {
	for i, e := range a {
		fmt.Fprint(wr, e)
		if i != len(a)-1 { fmt.Fprint(wr, " ") }
	}
	fmt.Fprintln(wr)
	wr.Flush()
}

//•*¨*•.¸¸♪func•*¨*•.¸¸♪

//•*¨*•.¸¸♪main•*¨*•.¸¸♪

func main() {
	sc.Split(bufio.ScanWords)
	// sc.Buffer(make([]byte, 10000), 100000000)

	n := scanInt()
	ps := scanInts(n)

	a := 10000000

	cnt := 0

	for i := 0; i < n; i++ {
		if ps[i]<=a {
			cnt++
			a=ps[i]
		}
	}

	fmt.Println(cnt)
}
