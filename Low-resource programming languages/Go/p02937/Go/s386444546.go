package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
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

func nStr(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func nInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

var r []int

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	s := readLine()
	t := readLine()
	l := len(s)
	a := make([][]int, l)
	for i := 0; i < l; i++ {
		a[i] = make([]int, 26)
		for j := 0; j < 26; j++ {
			a[i][j] = -1
		}
	}
	c := make([]int, 26)
	for i := 0; i < 26; i++ {
		c[i] = -1
	}
	for tt := 0; tt < 2; tt++ {
		for i := l - 1; i >= 0; i-- {
			for j := 0; j < 26; j++ {
				a[i][j] = c[j]
			}
			k := int(s[i] - 'a')
			c[k] = i
		}
	}
	u := l - 1
	r := -1
	tl := len(t)
	for i := 0; i < tl; i++ {
		k := int(t[i] - 'a')
		n := a[u][k]
		if n < 0 {
			fmt.Println(-1)
			return
		}
		if n <= u {
			r++
		}
		u = n
	}
	fmt.Println(int64(r)*int64(l) + int64(u) + 1)
}
