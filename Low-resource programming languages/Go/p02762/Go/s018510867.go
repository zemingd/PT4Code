package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func exec(stdin *Stdin, stdout *Stdout) {
	n := stdin.ReadInt()
	m := stdin.ReadInt()
	k := stdin.ReadInt()

	answers := make([]int, n)
	friends := NewCounter()
	parents := NewCounter()
	uf := NewUnionFind(n)

	for i := 0; i < m; i++ {
		a := stdin.ReadInt() - 1
		b := stdin.ReadInt() - 1
		friends.Increment(a)
		friends.Increment(b)
		uf.Union(a, b)
	}

	for i := 0; i < n; i++ {
		parents.Increment(uf.Find(i))
	}

	for i := 0; i < n; i++ {
		answers[i] = parents.Get(uf.Find(i)) - 1 - friends.Get(i)
	}

	for i := 0; i < k; i++ {
		c := stdin.ReadInt() - 1
		d := stdin.ReadInt() - 1
		if uf.Find(c) == uf.Find(d) {
			answers[c]--
			answers[d]--
		}
	}

	s := []string{}
	for _, v := range answers {
		s = append(s, strconv.Itoa(v))
	}
	stdout.Println(strings.Join(s, " "))
}

func main() {
	stdout := NewStdout()
	defer stdout.Flush()
	exec(NewStdin(bufio.ScanWords), stdout)
}

type Stdin struct {
	stdin *bufio.Scanner
}

func NewStdin(split bufio.SplitFunc) *Stdin {
	s := Stdin{bufio.NewScanner(os.Stdin)}
	s.stdin.Split(split)
	s.stdin.Buffer(make([]byte, bufio.MaxScanTokenSize), int(math.MaxInt32))
	return &s
}

func (s *Stdin) Read() string {
	s.stdin.Scan()
	return s.stdin.Text()
}

func (s *Stdin) ReadInt() int {
	n, _ := strconv.Atoi(s.Read())
	return n
}

func (s *Stdin) ReadFloat64() float64 {
	n, _ := strconv.ParseFloat(s.Read(), 64)
	return n
}

type Stdout struct {
	stdout *bufio.Writer
}

func NewStdout() *Stdout {
	return &Stdout{bufio.NewWriter(os.Stdout)}
}

func (s *Stdout) Flush() {
	s.stdout.Flush()
}

func (s *Stdout) Println(a ...interface{}) {
	fmt.Fprintln(s.stdout, a...)
}

type UnionFind struct {
	parents []int
}

func NewUnionFind(n int) *UnionFind {
	uf := UnionFind{}
	uf.parents = []int{}
	for i := 0; i < n; i++ {
		uf.parents = append(uf.parents, i)
	}
	return &uf
}

func (uf *UnionFind) Find(x int) int {
	if uf.parents[x] == x {
		return x
	}

	uf.parents[x] = uf.Find(uf.parents[x])
	return uf.parents[x]
}

func (uf *UnionFind) Union(x, y int) {
	x = uf.Find(x)
	y = uf.Find(y)
	if x != y {
		uf.parents[y] = x
	}
}

type Counter map[interface{}]int

func NewCounter() *Counter {
	return &Counter{}
}

func (c *Counter) put(key interface{}, v int) {
	d := map[interface{}]int(*c)
	d[key] = v
}

func (c *Counter) Increment(key interface{}) {
	c.put(key, c.Get(key)+1)
}

func (c *Counter) Decrement(key interface{}) {
	v := c.Get(key)
	if v > 0 {
		c.put(key, v-1)
	}
}

func (c *Counter) Get(key interface{}) int {
	d := map[interface{}]int(*c)
	if v, ok := d[key]; ok {
		return v
	} else {
		return 0
	}
}

func (c *Counter) Keys() []interface{} {
	d := map[interface{}]int(*c)
	keys := []interface{}{}
	for key := range d {
		keys = append(keys, key)
	}
	return keys
}
