package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var s = bufio.NewScanner(os.Stdin)

func main() {
	s.Scan()
	in := strings.Split(s.Text(), " ")
	x, _ := strconv.Atoi(in[0])
	y, _ := strconv.Atoi(in[1])
	z, _ := strconv.Atoi(in[2])
	k, _ := strconv.Atoi(in[3])
	a := make([]int, x)
	s.Scan()
	in = strings.Split(s.Text(), " ")
	for i := 0; i < x; i++ {
		a[i], _ = strconv.Atoi(in[i])
	}
	b := make([]int, y)
	s.Scan()
	in = strings.Split(s.Text(), " ")
	for i := 0; i < y; i++ {
		b[i], _ = strconv.Atoi(in[i])
	}
	c := make([]int, z)
	s.Scan()
	in = strings.Split(s.Text(), " ")
	for i := 0; i < z; i++ {
		c[i], _ = strconv.Atoi(in[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	sort.Sort(sort.Reverse(sort.IntSlice(b)))
	sort.Sort(sort.Reverse(sort.IntSlice(c)))

	d := make([]int, 0, x*y)
	for i, _ := range a {
		for j := range b {
			d = append(d, a[i]+b[j])
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(d)))
	var e []int
	if x*y < k {
		e = d[:x*y]
	} else {
		e = d[:k]
	}
	f := make([]int, 0, k*z)
	for i, _ := range e {
		for j := range c {
			f = append(f, e[i]+c[j])
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(f)))
	for i := 0; i < k; i++ {
		fmt.Println(f[i])
	}
}
