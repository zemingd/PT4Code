package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

type bc struct {
	num int
	value int
}

type bcs []bc

func (b bcs) Len() int {
	return len(b)
}

func (b bcs) Swap(i, j int) {
	b[i], b[j] = b[j], b[i]
}

func (b bcs) Less(i, j int) bool {
	return b[i].value < b[j].value
}


var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	m := nextInt()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}
	sort.Ints(a)
	b := make([]bc, m)
	for i := 0; i < m; i++ {
		b[i].num = nextInt()
		b[i].value = nextInt()
	}
	sort.Sort(sort.Reverse(bcs(b)))

	//fmt.Printf("%v\n", a)
	//fmt.Printf("%v\n", b)

	sum := 0
	idx := 0
	idx2 := 0
	for i:=0 ; i < n; i++ {
		x := a[i]
		y := 0
		if idx < m {
			y = b[idx].value
			idx2++
			if idx2 == b[idx].num {
				idx2 = 0
				idx++
			}
		}
		if x < y {
			sum += y
		} else {
			sum += x
		}
	}

	_, _ = fmt.Fprintf(writer, "%d", sum)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
