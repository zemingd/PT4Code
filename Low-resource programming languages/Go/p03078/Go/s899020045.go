package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type p struct {
	x int
	y int
	z int
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	sc.Split(bufio.ScanWords)
	x := nextInt()
	y := nextInt()
	z := nextInt()
	k := nextInt()
	a := make([]int, x)
	b := make([]int, y)
	c := make([]int, z)
	for i := 0; i < x; i++ {
		a[i] = nextInt()
	}
	for i := 0; i < y; i++ {
		b[i] = nextInt()
	}
	for i := 0; i < z; i++ {
		c[i] = nextInt()
	}
	sort.Ints(a)
	sort.Ints(b)
	sort.Ints(c)
	s := p{x: x - 1, y: y - 1, z: z - 1}
	ca := make(map[p]struct{})
	cb := make(map[p]struct{})
	ca[s] = struct{}{}

	for k > 0 && len(ca) > 0 {
		maxv := 0
		var maxe p
		for aa := range ca {
			v := a[aa.x] + b[aa.y] + c[aa.z]
			if v > maxv {
				maxe = aa
				maxv = v
			}
		}
		delete(ca, maxe)
		cb[maxe] = struct{}{}
		if maxe.x > 0 {
			s := p{x: maxe.x - 1, y: maxe.y, z: maxe.z}
			if _, ok := cb[s]; !ok {
				ca[s] = struct{}{}
			}
		}
		if maxe.y > 0 {
			s := p{x: maxe.x, y: maxe.y - 1, z: maxe.z}
			if _, ok := cb[s]; !ok {
				ca[s] = struct{}{}
			}
		}
		if maxe.z > 0 {
			s := p{x: maxe.x, y: maxe.y, z: maxe.z - 1}
			if _, ok := cb[s]; !ok {
				ca[s] = struct{}{}
			}
		}
		fmt.Fprintf(writer, "%d\n", a[maxe.x]+b[maxe.y]+c[maxe.z])
		k--
	}
}

func main() {
	answer(os.Stdin, os.Stdout)
}
