package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 100000)

func readLine() string {
	buf := make([]byte, 0, 100000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

type drink struct {
	a int
	b int
}

type A []*drink

func (a A) Len() int           { return len(a) }
func (a A) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a A) Less(i, j int) bool { return a[i].a < a[j].a }

func main() {
	nm := strings.Split(readLine(), " ")
	n, _ := strconv.Atoi(nm[0])
	m, _ := strconv.Atoi(nm[1])
	var ab A
	for i := 0; i < n; i++ {
		abstr := strings.Split(readLine(), " ")
		a, _ := strconv.Atoi(abstr[0])
		b, _ := strconv.Atoi(abstr[1])
		ab = append(ab, &drink{a: a, b: b})
	}
	sort.Sort(ab)
	var cost int
	for i := 0; i < n; i++ {
		if m > ab[i].b {
			cost += ab[i].a * ab[i].b
			m -= ab[i].b
		} else {
			cost += ab[i].a * m
			break
		}
	}
	fmt.Println(cost)
}
