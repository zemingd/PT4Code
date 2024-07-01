package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

const (
	bufsiz = 1024 * 1024
)

func main() {
	writer := newWriter(os.Stdout)
	defer writer.Flush()

	sc := newScanner(os.Stdin)
	nPeaple := sc.scanInt()

	elements := make([]int, nPeaple)

	for i := 0; i < nPeaple; i++ {
		elements[i] = sc.scanInt()
	}

	mIndex := 0
	mValue := elements[0]

	for {
		loop := false

		writer.printf("mIndex=%d mValue=%d elements=%v\n", mIndex, mValue, elements)

		for i, v := range elements { // 配列より最小値を探す
			if 0 < v && v < mValue {
				mIndex = i
				mValue = v
			}
		}

		for i, v := range elements { // 各要素を最小値で割ったあまりで置換
			if i == mIndex || v == 0 {
				continue
			}

			remainder := v % mValue
			if remainder < elements[i] {
				elements[i] = remainder
				loop = true
			}
		}

		if !loop {
			break
		}
	}

	writer.println(mValue)
}

// contains returns:
// if s contains e, true. / if s not contains e, false.
func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}

type scanner struct {
	*bufio.Scanner
}

func newScanner(r io.Reader) *scanner {
	s := bufio.NewScanner(r)
	s.Split(bufio.ScanWords)
	return &scanner{s}
}

func (s *scanner) scanStr() string {
	s.Buffer(make([]byte, bufsiz), bufsiz)
	if !s.Scan() {
		panic("scan failed")
	}
	return s.Text()
}

func (s *scanner) scanInt() int {
	if !s.Scan() {
		panic("scan failed")
	}
	i, err := strconv.Atoi(s.Text())
	if err != nil {
		panic(err)
	}
	return i
}

type writer struct {
	*bufio.Writer
}

func newWriter(wr io.Writer) *writer {
	w := bufio.NewWriter(wr)
	return &writer{w}
}

func (w *writer) printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(w, f, args...)
}

func (w *writer) println(args ...interface{}) (int, error) {
	return fmt.Fprintln(w, args...)
}
