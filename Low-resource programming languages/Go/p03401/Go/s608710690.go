package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	p := problem{
		in:  bufio.NewReader(os.Stdin),
		out: bufio.NewWriter(os.Stdout),
	}
	n := p.NextInt()

	s := p.NextInts()
	s = append(s, 0)

	var stat, sum, kn int

	for i := 0; i < n; i++ {
		sum = 0
		stat = 0
		for k := 0; k < n+1; k++ {
			kn = s[k]
			if i == k {
				continue
			} else {
				t := stat - kn
				if t < 0 {
					t = -t
				}
				sum += t
				stat = kn
			}
		}

		fmt.Println(sum)
	}
}

type problem struct {
	in  *bufio.Reader
	out *bufio.Writer
}

func (p *problem) PrintInt(d int) {
	p.Printf("%d", d)
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