package main

import (
	"bufio"
	"fmt"
	basicIO "io"
	"os"
	"strconv"
)

func main() {
	protagonist(os.Stdin, os.Stdout)
}

func protagonist(r basicIO.Reader, w basicIO.Writer) {
	io := NewIO(r, w)
	S := io.nextString()
	switch S {
	case "Sunny":
		io.PutString("Cloudy")
	case "Cloudy":
		io.PutString("Rainy")
	case "Rainy":
		io.PutString("Sunny")
	}
}

type IO struct {
	Scanner *bufio.Scanner
	Writer  basicIO.Writer
}

func NewIO(r basicIO.Reader, w basicIO.Writer) *IO {
	s := bufio.NewScanner(r)
	s.Split(bufio.ScanWords)
	return &IO{
		Scanner: s,
		Writer:  w,
	}
}

func (io *IO) nextString() string {
	io.Scanner.Scan()
	return io.Scanner.Text()
}

func (io *IO) nextInt() (int, error) {
	io.Scanner.Scan()
	i, err := strconv.Atoi(io.Scanner.Text())
	return i, err
}

func (io *IO) PutInt(v int) {
	fmt.Fprintf(io.Writer, "%d\n", v)
}

func (io *IO) PutString(s string) {
	fmt.Fprintf(io.Writer, "%s\n", s)
}
