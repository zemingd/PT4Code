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
	N := p.NextInt()
	points := p.NextInts()
	points = append(points, 0)

	var sum, prev int
	var costs []int
	for i := 0; i <= N; i++ {
		c := abs(prev - points[i])
		sum += c
		costs = append(costs, c)
		prev = points[i]
	}

	//log.Printf("sum:%d\npoints:%v\ncosts:%v\n", sum, points, costs)
	prev = 0
	for i := 0; i < N; i++ {
		pc := costs[i] + costs[i+1]
		sc := abs(prev - points[i+1])
		r := sum - (pc - sc)
		p.Printf("%d\n", r)
		//log.Printf("pc:%d, sc:%d, result:%d\n", pc, sc, r)
		prev = points[i]
	}
}

func abs(x int) int {
	if x < 0 {
		return x * -1
	}
	return x
}

func min(x, y int) int {
	if x < y {
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
