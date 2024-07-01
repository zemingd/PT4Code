package main

import (
	"bufio"
	"bytes"
	"fmt"
	"log"
	"os"
	"strconv"
)

var outCnt int
var out bytes.Buffer

func main() {
	log.SetFlags(log.Lshortfile)
	nextReader = NewScanner()
	H := nextInt()
	W := nextInt()
	var f Filed
	f.mas = make([][]int, H)
	for i := 0; i < H; i++ {
		f.mas[i] = nextInts(W)
	}
	for i := 0; i < H; i++ {
		for j := 0; j < W-1; j++ {
			if f.mas[i][j]%2 == 1 {
				f.Move(i, j, i, j+1)
			}
		}
	}
	for i := 0; i < H-1; i++ {
		j := W - 1
		if f.mas[i][j]%2 == 1 {
			f.Move(i, j, i+1, j)
		}
	}
	fmt.Println(outCnt)
	fmt.Print(out.String())
	// out.WriteTo(os.Stdin)
	// log.Print("\n", f.String())
}

type Filed struct {
	mas [][]int
}

func (f *Filed) Move(a, b, c, d int) {
	out.WriteString(fmt.Sprintf("%d %d %d %d\n", a+1, b+1, c+1, d+1))
	outCnt++
	if f.mas[a][b] <= 0 {
		panic("error")
	}
	f.mas[a][b]--
	f.mas[c][d]++
}

func (f Filed) String() string {
	var out bytes.Buffer
	for i := 0; i < len(f.mas); i++ {
		out.WriteString(fmt.Sprintln(f.mas[i]))
	}
	return out.String()
}
func max(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r < a[i] {
			r = a[i]
		}
	}
	return r
}
func min(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r > a[i] {
			r = a[i]
		}
	}
	return r
}
func sum(a []int) (r int) {
	for i := range a {
		r += a[i]
	}
	return r
}
func minmax(a, b int) (int, int) {
	if a > b {
		return b, a
	}
	return a, b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

var nextReader func() string

func NewScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}
func nextString() string {
	return nextReader()
}
func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}
func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}
func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}
func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(nextReader(), 64)
	return f
}
