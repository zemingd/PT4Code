package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

func Solve(in io.Reader, out io.Writer) {
	var n int
	var as, bs, cs []int

	scanner := bufio.NewScanner(in)
	scanner.Split(bufio.ScanWords)

	scanner.Scan()
	n, _ = strconv.Atoi(scanner.Text())

	as = make([]int, n)
	for i := 0; i < n; i++ {
		scanner.Scan()
		as[i], _ = strconv.Atoi(scanner.Text())
	}
	bs = make([]int, n)
	for i := 0; i < n; i++ {
		scanner.Scan()
		bs[i], _ = strconv.Atoi(scanner.Text())
	}
	cs = make([]int, n)
	for i := 0; i < n; i++ {
		scanner.Scan()
		cs[i], _ = strconv.Atoi(scanner.Text())
	}

	ret := 0
	sort.Ints(as)
	sort.Sort(sort.Reverse(sort.IntSlice(cs)))
	for _, b := range bs {
		c1, c2 := n, n
		f1, f2 := false, false
		for i := 0; i < n; i++ {
			if as[i] >= b && !f1 {
				c1 = i
				f1 = true
			}
			if cs[i] <= b && !f2 {
				c2 = i
				f2 = true
			}
			if f1 && f2 {
				break
			}
		}
		ret += c1 * c2
	}
	fmt.Fprintln(out, ret)
}

func main() {
	Solve(os.Stdin, os.Stdout)
}
