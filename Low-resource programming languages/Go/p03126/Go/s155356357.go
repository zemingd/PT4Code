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

	// mFoods := sc.scanInt()
	sc.scanInt()

	// 1人目の情報をscan
	kind := sc.scanInt()
	m := make(map[int]bool, kind)

	for i := 0; i < kind; i++ {
		tmp := sc.scanInt()
		m[tmp] = true
	}

	for i := 1; i < nPeaple; i++ { // 2人目の情報、3人目の情報... 「全ての行が含む」を確認したい
		kind := sc.scanInt()
		sl := make([]int, kind)

		for j := 0; j < kind; j++ {
			sl[j] = sc.scanInt()
		}

		for k := range m { // 1人目の情報を有するmapの各要素
			if !contains(sl, k) {
				m[k] = false
			}
		}
	}

	result := 0
	for _, v := range m {
		if v == true {
			result++
		}
	}

	writer.println(result)

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
