package main

import (
	"bufio"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"strconv"
	"strings"
)

const debug = false

func (p *problem) solve() {
	l := p.NextInts()
	a, b, k := l[0], l[1], l[2]
	for i := a; i < a+k; i++ {
		if i > b {
			return
		}
		log.Printf("1 section: i=%v", i)
		p.PrintInt(i)
	}
	var s int
	if (a + k - 1) == (b - k + 1) {
		s = b - k + 2
	} else {
		s = max(a+k-1, b-k+1)
	}

	log.Println("s=%v, max(a+k-1, b-k)=%v", s, a+k-1, b-k+1)
	for i := s; i <= b; i++ {
		log.Printf("2 section: i=%v", i)
		p.PrintInt(i)
	}
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func main() {
	if debug {
		log.SetOutput(os.Stdout)
	} else {
		log.SetOutput(ioutil.Discard)
	}

	p := problem{
		in:  bufio.NewReader(os.Stdin),
		out: bufio.NewWriter(os.Stdout),
	}
	p.solve()

	if err := p.out.Flush(); err != nil {
		panic(err)
	}
}

type problem struct {
	in  *bufio.Reader
	out *bufio.Writer
}

func (p *problem) PrintInt(d int) {
	p.Printf("%d\n", d)
}

func (p *problem) Printf(format string, a ...interface{}) {
	if _, err := fmt.Fprintf(p.out, format, a...); err != nil {
		panic(err)
	}
}

func (p *problem) NextInt() int {
	return stoi(p.Next())
}

func (p *problem) NextInts() []int {
	line := p.NextSSLine()
	ds := make([]int, len(line))
	for i, s := range line {
		ds[i] = stoi(s)
	}
	return ds
}

func (p *problem) NextSSLine() []string {
	return strings.Split(p.Next(), " ")
}

// Next reads line and return string.
func (p *problem) Next() string {
	var b []byte
	for {
		l, pre, err := p.in.ReadLine()
		if err != nil {
			panic(err)
		}
		b = append(b, l...)
		if !pre {
			break
		}
	}
	return string(b)
}

func stoi(s string) int {
	i, err := strconv.Atoi(s)
	if err != nil {
		fmt.Println(i)
		fmt.Println(err)
	}
	return i
}
