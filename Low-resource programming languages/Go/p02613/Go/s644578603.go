package main

import (
	"bufio"
	"fmt"
	"os"
)

type counter struct {
	a map[string]int
}

func (c *counter) Add(val string) {
	if _, ok := c.a[val]; ok {
		c.a[val]++
	}
}

func (c *counter) Output() {
	for _, v := range []string{"AC", "WA", "TLE", "RE"} {
		fmt.Println(v, "x", c.a[v])
	}
}

func newCounter(a map[string]int) *counter {
	return &counter{a: a}
}

var (
	initial = map[string]int{
		"AC":  0,
		"WA":  0,
		"TLE": 0,
		"RE":  0,
	}
)

func main() {
	var n int
	fmt.Scan(&n)

	m := newCounter(initial)
	s := bufio.NewScanner(os.Stdin)
	for i := 0; i < n; i++ {
		s.Scan()
		m.Add(s.Text())
	}

	m.Output()
}
