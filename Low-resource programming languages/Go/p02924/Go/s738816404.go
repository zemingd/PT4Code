package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

type MyScanner struct {
	sc *bufio.Scanner
}

type MyWriter struct {
	stdout io.Writer
}

type MyPut interface{}

func getScanner(fp io.Reader) *bufio.Scanner {
	sc := bufio.NewScanner(fp)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 500001), 500000)
	return sc
}

func getHugeScanner(fp io.Reader, size int) *bufio.Scanner {
	sc := bufio.NewScanner(fp)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, size), size)
	return sc
}

func (mysc *MyScanner)String() string {
	mysc.sc.Scan()
	return mysc.sc.Text()
}

func (mysc *MyScanner)Int() int {
	i, _ := strconv.Atoi(mysc.String())
	return i
}

func (mysc *MyScanner)Int64() int64 {
	i, _ := strconv.ParseInt(mysc.String(), 10, 64)
	return i
}

func (mysc *MyScanner)Float64() float64 {
	i, _ := strconv.ParseFloat(mysc.String(), 64)
	return i
}

func (mw MyWriter)Puts(v MyPut) {
	_, _ = fmt.Fprintf(mw.stdout, "%v\n", v)
}

func Done(a [][]int) bool {
	for i := 0; i < len(a); i++ {
		if len(a[i]) > 0 {
			return false
		}
	}
	return true
}

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := MyScanner{getScanner(stdin)}
	mw := MyWriter{stdout}

	n := sc.Int()

	a := make([][]int, n)

	for i := 0; i < n; i++ {
		a[i] = make([]int, n - 1)
		for j := 0; j < n - 1; j++ {
			in := sc.Int()
			in--
			a[i][j] = in
		}
	}

	done := make([]bool, n)
	ans := 0
	exit := false
	for !Done(a) && !exit {
		ans++
		for i := 0; i < n; i++ {
			done[i] = false
		}
		for i := 0; i < n && !exit; i++ {
			if len(a[i]) == 0 {
				continue
			}
			if len(a[a[i][0]]) == 0 {
				mw.Puts(-1)
				exit = true
				continue
			}
			if a[a[i][0]][0] != i {
				continue
			}
			if done[i] || done[a[i][0]] {
				continue
			}
			done[a[i][0]] = true
			done[i] = true
			a[a[i][0]] = a[a[i][0]][1:]
			a[i] = a[i][1:]
		}
		ok := false
		for i := 0; i < n; i++ {
			if done[i] {
				ok = true
			}
		}
		if !ok {
			mw.Puts(-1)
			exit = true
		}
	}

	if !exit {
		mw.Puts(ans)
	}
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}
