// go:generate go-assets-builder > assets.go

package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	// sc.Split(bufio.ScanLines)
	n := readInt()
	k := readInt()
	h := make([]int, 0, n)
	for i := 0; i < n; i++ {
		h = append(h, readInt())
	}
	sort.Sort(sort.IntSlice(h))
	minInt := h[0]
	for i := 0; i < n-k+1; i++ {
		abs := abs(h[i+k-1], h[i])
		if abs == 0 {
			fmt.Println(0)
			return
		}
		minInt = min(minInt, abs)
	}
	fmt.Println(minInt)
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
