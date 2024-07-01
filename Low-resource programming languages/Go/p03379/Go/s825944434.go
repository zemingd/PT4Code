package main

import (
	"bufio"
	"flag"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"sort"
	"strconv"
	"strings"
)

type box struct {
	value, index int
}

func (p *problem) solve() {
	N := p.NextInt()
	xs := strings.Split(p.Next(), " ")

	var list boxs
	for i, v := range xs {
		list = append(list, box{value: stoi(v), index: i})
	}
	sort.Sort(list)

	//log.Printf("N=%v, list=%v", N, list)
	for i := 0; i < N; i++ {
		c := N/2 - 1
		cv := -1
		for j := 0; j <= c; j++ {
			//log.Printf("i=%v, j=%v, c=%v, list[j]=%v", i, j, c, list[j])
			if list[j].index == i {
				//log.Printf("detect: list[c+1].value=%v", list[c+1].value)
				cv = list[c+1].value
				break
			}
		}
		if cv == -1 {
			cv = list[c].value
		}
		p.PrintInt(cv)
	}
}

type boxs []box

func (p boxs) Len() int {
	return len(p)
}

func (p boxs) Less(i, j int) bool {
	return p[i].value < p[j].value
}

func (p boxs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func del(i int, a []int) []int {
	var new []int
	for ii, v := range a {
		if ii == i {
			continue
		}
		new = append(new, v)
	}
	return new
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
