package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

//Util
func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func minInt(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func absInt(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func absFloat64(a float64) float64 {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func minFloat64(a, b float64) float64 {
	if a > b {
		return b
	} else {
		return a
	}
}

func str2Int(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}

//Main
const MAX = 2000000000

var sc = bufio.NewScanner(os.Stdin)
var N int

type Arm struct {
	l, r int
}

var arms []Arm

type Arms []Arm

func (a Arms) Len() int           { return len(a) }
func (a Arms) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a Arms) Less(i, j int) bool { return a[i].r < a[j].r }

func main() {
	sc.Split(bufio.ScanWords)
	N = nextInt()
	arms := make([]Arm, N)
	for i := 0; i < N; i++ {
		tmpX := nextInt()
		tmpL := nextInt()
		arms[i].l = tmpX - tmpL
		arms[i].r = tmpX + tmpL
	}

	sort.Sort(Arms(arms))
	//fmt.Println(arms[:N])

	prevl := MAX
	res := 0
	for i := N - 1; i >= 0; i-- {
		if arms[i].r <= prevl {
			res++
			prevl = arms[i].l
		}
	}

	fmt.Println(res)

}
