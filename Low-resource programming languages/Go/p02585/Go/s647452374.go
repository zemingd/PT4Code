package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := NewScanner()

	n := sc.ReadInt()
	k := sc.ReadInt()
	p := make([]int, n+1)
	for i := 1; i <= n; i++ {
		p[i] = sc.ReadInt()
	}
	c := make([]int, n+1)
	for i := 1; i <= n; i++ {
		c[i] = sc.ReadInt()
	}

	maxC := -10_000_000_000
	for startI := 1; startI <= n; startI++ {
		maxCforStart := -10_000_000_000
		visit := make([]bool, n+1)
		score := 0
		loopWidth := 0
		for i := p[startI]; !visit[i]; i = p[i] {
			score += c[i]
			if score > maxCforStart {
				maxCforStart = score
			}

			loopWidth++
			visit[i] = true
		}

		score *= k / loopWidth
		maxCAfterLoops := score
		for i, times := startI, 0; times < k%loopWidth; times++ {
			i = p[i]

			score += c[i]
			if score > maxCAfterLoops {
				maxCAfterLoops = score
			}
		}
		maxCforStart = Max(maxCforStart, maxCAfterLoops)

		if maxCforStart > maxC {
			maxC = maxCforStart
		}
	}

	fmt.Println(maxC)
}

// from [my library](https://github.com/ikngtty/go-contestlib)
// -   math/simple

func Abs(x int) int {
	if x >= 0 {
		return x
	}
	return -x
}

func Min(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}

	min := values[0]
	for _, v := range values {
		if v < min {
			min = v
		}
	}
	return min
}

func Max(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}

	max := values[0]
	for _, v := range values {
		if v > max {
			max = v
		}
	}
	return max
}

func Pow(base, exponent int) int {
	if exponent < 0 {
		panic(fmt.Sprintf("exponent (%d) should not be a minus", exponent))
	}

	answer := 1
	for i := 0; i < exponent; i++ {
		answer *= base
	}
	return answer
}

func Ceil(divident, dividor int) int {
	if dividor == 0 {
		panic("dividor should not be 0")
	}

	quo := divident / dividor
	rem := divident % dividor

	if rem != 0 {
		if (divident > 0 && dividor > 0) ||
			(divident < 0 && dividor < 0) {
			return quo + 1
		}
	}
	return quo
}

// -   sortutil

func ReverseInts(a []int) {
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
}

func ReverseStrings(a []string) {
	sort.Sort(sort.Reverse(sort.StringSlice(a)))
}

// -   io

type Scanner struct {
	bufScanner *bufio.Scanner
}

func NewScanner() *Scanner {
	bufSc := bufio.NewScanner(os.Stdin)
	bufSc.Split(bufio.ScanWords)
	bufSc.Buffer(nil, 100000000)
	return &Scanner{bufSc}
}

func (sc *Scanner) ReadString() string {
	bufSc := sc.bufScanner
	bufSc.Scan()
	return bufSc.Text()
}

func (sc *Scanner) ReadInt() int {
	bufSc := sc.bufScanner
	bufSc.Scan()
	text := bufSc.Text()

	num, err := strconv.Atoi(text)
	if err != nil {
		panic(err)
	}
	return num
}
