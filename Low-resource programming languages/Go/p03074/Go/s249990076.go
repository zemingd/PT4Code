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
	N := io.nextInt()
	K := io.nextInt()
//	S := io.nextString()
	   var S string
	   fmt.Scan(&S)

	if N <= K {
		io.PutInt(N)
		return
	}

	var a []int
	now := S[0]
	buf := 0

	if S[0] == '0' {
		a = append(a, 0)
	}
	for i, _ := range S {
		v := S[i]
		if now == v {
			buf++
		} else {
			a = append(a, buf)
			now = v
			buf = 1
		}
	}
	a = append(a, buf)
	if S[len(S)-1] == '0' {
		a = append(a, 0)
	}

	sum := 0
	i := 0
	for ; i < K*2+1; i++ {
		sum += a[i]
	}
	max := sum
	for n := 0; i < len(a); i += 2 {
		sum += a[i]
		sum += a[i+1]
		sum -= a[n]
		sum -= a[n+1]
		if sum > max {
			max = sum
		}
		n++
	}

	io.PutInt(max)
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

func (io *IO) nextInt() int {
	io.Scanner.Scan()
	i, _ := strconv.Atoi(io.Scanner.Text())
	return i
}

func (io *IO) PutInt(v int) {
	fmt.Fprintf(io.Writer, "%d\n", v)
}

func (io *IO) PutString(s string) {
	fmt.Fprintf(io.Writer, "%s\n", s)
}
