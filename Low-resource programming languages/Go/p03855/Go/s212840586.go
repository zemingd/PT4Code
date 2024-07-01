package main

import (
	"bufio"
	"os"
	"strconv"
)

const scBufSize = 1 * 1024 * 1024 // 1MB
var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, scBufSize), scBufSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func main() {
	n := scani()
	k := scani()
	l := scani()

	road := con(n, k)
	rail := con(n, l)

	for i := 0; i < n; i++ {
		c := 0
		for j := 0; j < n; j++ {
			if road[i][j] && rail[i][j] {
				c++
			}
		}
		os.Stdout.WriteString(strconv.Itoa(c) + " ")
	}
}

func con(n, k int) [][]bool {
	road := getmap(n)
	for i := 0; i < k; i++ {
		o, d := scanRoad()
		road[o][d] = true
		road[d][o] = true
	}
	s1 := 0
	for {
		connect(n, road)
		new := sum(road)
		if s1 == new {
			break
		}
		s1 = new
	}
	return road
}

func getmap(n int) [][]bool {
	r := make([][]bool, n)
	for i := 0; i < n; i++ {
		s := make([]bool, n)
		s[i] = true
		r[i] = s
	}
	return r
}

func connect(n int, r [][]bool) [][]bool {
	ret := getmap(n)
	for i, a := range r {
		for j, b := range a {
			if b {
				ret[i] = add(r[i], r[j])
			}
		}
	}
	return ret
}

func add(a, b []bool) []bool {
	for i := range a {
		a[i] = a[i] || b[i]
	}
	return a
}

func sum(r [][]bool) int {
	s := 0
	for i := 0; i < len(r); i++ {
		for _, b := range r[i] {
			if b {
				s++
			}
		}
	}
	return s
}
func scani() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func scanRoad() (o, d int) {
	o = scani() - 1
	d = scani() - 1
	return
}