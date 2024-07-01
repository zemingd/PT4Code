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

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := MyScanner{getScanner(stdin)}
	mw := MyWriter{stdout}

	s := sc.String()
	t := sc.String()

	ans := 0
	for i := 0; i < 3; i++ {
		if s[i] == t[i] {
			ans++
		}
	}
	mw.Puts(ans)
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}