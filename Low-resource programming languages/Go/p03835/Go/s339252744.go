package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

// var rdr = bufio.NewReaderSize(os.Stdin, 100000)
var rdr *bufio.Reader

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	solve()
}

func solve() {
	// ABC051B
	k, s := nextInt(), nextInt()

	cnt := 0
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			z := s - x - y
			if 0 <= z && z <= k {
				cnt++
			}
		}
	}

	ans := cnt
	fmt.Println(ans)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func readLine() string {
	buf := make([]byte, 0, 100000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextI64() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func max(a int, b int) int {
	if a > b {
		return a
	}
	return b
}

func maxi64(a int64, b int64) int64 {
	if a > b {
		return a
	}
	return b
}

func updateMax(a *int, b int) {
	if *a < b {
		*a = b
	}
}

func min(a int, b int) int {
	if a < b {
		return a
	}
	return b
}

func mini64(a int64, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func updateMin(a *int, b int) {
	if *a > b {
		*a = b
	}
}

func absi64(a int64) int64 {
	if a < 0 {
		return -a
	}
	return a
}

func anser(b bool, y string, n string) string {
	if b {
		return y
	}
	return n
}