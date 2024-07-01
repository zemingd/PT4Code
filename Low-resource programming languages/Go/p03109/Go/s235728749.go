package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	"time"
)

func main() {
	sc.Split(bufio.ScanWords)
	// sc.Split(bufio.ScanLines)
	s := read()

	arr := strings.Split(s, "/")
	y, _ := strconv.Atoi(arr[0])
	m, _ := strconv.Atoi(arr[1])
	d, _ := strconv.Atoi(arr[2])
	t := time.Date(2019, 4, 30, 0, 0, 0, 0, time.Local)
	t1 := time.Date(y, time.Month(m), d, 0, 0, 0, 0, time.Local)
	b := t1.Sub(t)
	if b <= 0 {
		fmt.Println("Heisei")
		return
	}
	fmt.Println("TBD")
}

//便利関数群
var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	i, _ := strconv.Atoi(read())
	return i
}

func max(x, y int) int {
	if x > y {
		return x
	} else {
		return y
	}
}

func min(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}

func abs(x, y int) int {
	if x-y > 0 {
		return x - y
	}
	return -(x - y)
}

type XY struct {
	x, y int
}

type Points []XY

func (p Points) Len() int {
	return len(p)
}
func (p Points) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}
func (p Points) Less(i, j int) bool {
	return p[i].x < p[j].x
}
func (p Points) remove(i int) Points {
	if i >= len(p) {
		return p
	}
	return append(p[:i], p[i+1:]...)
}
