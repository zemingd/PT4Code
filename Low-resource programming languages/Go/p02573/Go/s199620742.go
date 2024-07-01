package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc *bufio.Scanner

type uf struct {
	size  int
	pare  int
	child []int
}

var p []uf

func main() {
	sc = bufio.NewScanner(os.Stdin)
	var n, m int
	fmt.Scanf("%d %d", &n, &m)
	inits(n)
	for i := 0; i < m; i++ {
		tmp := IntBufScan()
		add(tmp[0], tmp[1])
	}
	ans := 0
	for _, i := range p {
		if i.size > ans {
			ans = i.size
		}
	}
	fmt.Println(ans)
}
func inits(n int) {
	p = append(p, uf{size: 1})
	for i := 0; i < n; i++ {
		p = append(p, uf{size: 1})
	}
}
func add(ain, bin int) {
	a := root(ain)
	b := root(bin)
	if a == b {
		return
	}
	p[a].size += p[b].size
	p[a].child = append(p[a].child, b)
	p[b].pare = a
}
func root(a int) int {
	pare := p[a].pare
	if pare == 0 {
		return a
	} else {
		return root(pare)
	}
}
func BufScan() string {
	sc.Scan()
	return sc.Text()
}

func IntBufScan() []int {
	var inInts []int
	inString := BufScan()
	in := strings.Split(inString, " ")
	tmp1, _ := strconv.Atoi(in[0])
	tmp2, _ := strconv.Atoi(in[1])
	inInts = []int{tmp1, tmp2}
	return inInts
}
