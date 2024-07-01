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
	a := sc.scanInt()
	b := sc.scanInt()

	if b%a == 0 {
		writer.println(a + b)
	} else {
		writer.println(b - a)
	}
}

func print(okng string) {
	fmt.Println(okng)
	os.Exit(0)
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
