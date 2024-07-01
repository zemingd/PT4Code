package main

import (
	"bufio"
	"flag"
	"fmt"
	"io/ioutil"
	"log"
	"math"
	"os"
	"strconv"
	"strings"
)

var pn = []float64{2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37}

func (p *problem) solve() {
	X := p.NextInt()

	if X == 1 {
		p.PrintInt(1)
		return
	}

	var max int
	for _, p := range pn {
		i := 2
		for {
			n := math.Pow(float64(p), float64(i))
			if n > float64(X) {
				break
			}
			if int(n) > max {
				max = int(n)
			}
			i++
		}
	}
	p.PrintInt(max)
}

var (
	debug  bool
	output string
)

func main() {
	flag.BoolVar(&debug, "debug", false, "Print debug logs")
	flag.BoolVar(&debug, "d", false, "Print debug logs")
	flag.StringVar(&output, "output", "stdout", "Specify output target (Default: stdout)")
	flag.StringVar(&output, "o", "stdout", "Specify output target (Default: stdout)")
	flag.Parse()

	if debug {
		out := os.Stdout
		if output != "stdout" {
			logfile, err := os.OpenFile(output, os.O_CREATE|os.O_WRONLY, 0666)
			if err != nil {
				panic(err)
			}
			defer logfile.Close()
			out = logfile
		}
		log.SetOutput(out)
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

func (p *problem) Printfln(format string, a ...interface{}) {
	if _, err := fmt.Fprintf(p.out, fmt.Sprintf("%v\n", format), a...); err != nil {
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
