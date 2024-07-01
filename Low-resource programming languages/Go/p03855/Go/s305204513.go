package main

import (
	"bufio"
	"os"
	"strconv"
	"sync"
)

const scBufSize = 1 * 1024 * 1024 // 1MB
var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, scBufSize), scBufSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

var wg = &sync.WaitGroup{}

func main() {
	n := scani()
	k := scani()
	l := scani()

	r1 := []int{}
	for i := 0; i < k; i++ {
		o, d := scanRoad()
		r1 = append(r1, o, d)
	}
	r2 := []int{}
	for i := 0; i < l; i++ {
		o, d := scanRoad()
		r2 = append(r2, o, d)
	}

	wg.Add(2)
	ch1 := make(chan [][]bool, 1)
	ch2 := make(chan [][]bool, 1)
	con(n, r1, ch1)
	con(n, r2, ch2)
	road := <-ch1
	rail := <-ch2
	wg.Wait()

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

func con(n int, r []int, ch chan [][]bool) {
	defer wg.Done()
	road := getmap(n)

	for i := 0; i < len(r); i = i + 2 {
		o := r[i]
		d := r[i+1]
		road[o][d] = true
		road[d][o] = true
	}
	for {
		c := connect(n, road)
		if c == 0 {
			break
		}
	}
	ch <- road
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

func connect(n int, r [][]bool) int {
	ch := 0
	ret := getmap(n)
	for i, a := range r {
		for j, b := range a {
			if b {
				c, tmp := add(r[i], r[j])
				ch += c
				ret[i] = tmp
			}
		}
	}
	return ch
}

func add(a, b []bool) (int, []bool) {
	c := 0
	for i := range a {
		if !a[i] {
			if b[i] {
				c++
				a[i] = true
			}
		}
	}
	return c, a
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
