package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
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

type A [][]int

func (a A) Len() int           { return len(a) }
func (a A) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a A) Less(i, j int) bool { return a[i][0] < a[j][0] }

func main() {
	nm := strings.Split(readLine(), " ")
	n, _ := strconv.Atoi(nm[0])
	m, _ := strconv.Atoi(nm[1])
	var ab [][]int
	for i := 0; i < n; i++ {
		abstr := strings.Split(readLine(), " ")
		a, _ := strconv.Atoi(abstr[0])
		b, _ := strconv.Atoi(abstr[1])
		ab = append(ab, []int{a, b})
	}
	sort.Sort(A(ab))
	var cost int
	for _, v := range ab {
		if m > v[1] {
			cost += v[0] * v[1]
			m -= v[1]
		} else {
			cost += v[0] * m
			break
		}
	}
	fmt.Println(cost)
}
