package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {

	var wtr = bufio.NewWriter(os.Stdout)
	var sc = bufio.NewScanner(os.Stdin)
	var A, B, M int
	sc.Scan()
	temp := strings.Split(sc.Text(), " ")
	A, _ = strconv.Atoi(temp[0])
	B, _ = strconv.Atoi(temp[1])
	M, _ = strconv.Atoi(temp[2])

	a := make([]int, A)
	b := make([]int, B)

	m := make(map[string]int, M)

	sc.Scan()
	for i, s := range strings.Split(sc.Text(), " ") {
		a[i], _ = strconv.Atoi(s)
	}
	sc.Scan()
	for i, s := range strings.Split(sc.Text(), " ") {
		b[i], _ = strconv.Atoi(s)
	}
	/*
		for j := 0; j < M; j++ {
			sc.Scan()
			temp := strings.Split(sc.Text(), " ")
			str := temp[0] + "," + temp[1]
			c, _ := strconv.Atoi(temp[2])
			if v, ok := m[str]; ok {
				if v < c {
					m[str] = c
				}
			} else {
				m[str] = c
			}
		}
	*/

	min := math.MaxInt64
	for i, av := range a {
		p := strconv.Itoa(i + 1)
		for j, bv := range b {
			value := av + bv
			if v, ok := m[p+","+strconv.Itoa(j+1)]; ok {
				value -= v
			}
			if min > value {
				min = value
			}
		}
	}

	fmt.Fprintln(wtr, 0)
	_ = wtr.Flush()
}
