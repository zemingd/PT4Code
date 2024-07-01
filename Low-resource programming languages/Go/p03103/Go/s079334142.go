package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var N int
var M int

type Shop struct {
	price  int64
	volume int64
}

type Shops []Shop

func (s Shops) Len() int { return len(s) }
func (s Shops) Less(i, j int) bool {
	return s[i].price < s[j].price
}

func (s Shops) Swap(i, j int) { s[i], s[j] = s[j], s[i] }

func main() {
	N = nextInt()
	M = nextInt()
	var shops Shops
	for i := 0; i < N; i++ {
		s := new(Shop)
		s.price = nextInt64()
		s.volume = nextInt64()
		shops = append(shops, *s)
	}
	// sort.Slice(Shops[:], func(i, j int) bool {
	// 	return Shops[i].price < Shops[j].price
	// })
	sort.Sort(&shops)
	total := int64(0)
	more := int64(M)
	for i := 0; i < N; i++ {
		if shops[i].volume >= more {
			total += more * shops[i].price
			break
		} else {
			total += shops[i].volume * shops[i].price
			more -= shops[i].volume
		}
	}
	fmt.Printf("%v", total)
}

func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}

func nextString() string {
	return nextReader()
}

func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}

func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}

func nextInts64(n int) []int64 {
	r := make([]int64, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt64()
	}
	return r
}

var nextReader func() string

func init() {
	nextReader = NewScanner()
}

func NewScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}

func Min(a int, b int) int {
	if a > b {
		return b
	}
	return a
}

func MaxIn2Values(a int, b int) int {
	if a > b {
		return a
	}
	return b
}

func MinIn2Values(a int, b int) int {
	if a < b {
		return a
	}
	return b
}

func Abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}
