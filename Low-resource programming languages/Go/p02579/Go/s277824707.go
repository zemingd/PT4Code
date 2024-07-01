package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := NewScanner()

	h := sc.ReadInt()
	w := sc.ReadInt()

	ch := sc.ReadInt() - 1
	cw := sc.ReadInt() - 1
	startPoint := Point{ch, cw}

	dh := sc.ReadInt() - 1
	dw := sc.ReadInt() - 1
	goalPoint := Point{dh, dw}

	s := make([]string, h)
	for i := 0; i < h; i++ {
		s[i] = sc.ReadString()
	}

	isPassable := func(p *Point) bool {
		if p.H < 0 || p.H >= h ||
			p.W < 0 || p.W >= w {
			return false
		}
		return s[p.H][p.W] == '.'
	}

	visits := make([][]bool, h)
	for i := 0; i < h; i++ {
		visits[i] = make([]bool, w)
	}
	visits[startPoint.H][startPoint.W] = true

	warpTimes := 0
	pointQueueForWalk := NewPointList()
	pointQueueForWalk.Add(&startPoint)
	pointQueueForWarp := NewPointList()
	for pointQueueForWalk.Len() > 0 {
		for pointQueueForWalk.Len() > 0 {
			point := pointQueueForWalk.Dequeue()
			pointQueueForWarp.Add(point)

			for _, newPoint := range point.AroundPoints() {
				if !isPassable(newPoint) {
					continue
				} else if visits[newPoint.H][newPoint.W] {
					continue
				} else if *newPoint == goalPoint {
					fmt.Println(warpTimes)
					return
				}

				pointQueueForWalk.Add(newPoint)
				visits[newPoint.H][newPoint.W] = true
			}
		}

		warpTimes++

		for pointQueueForWarp.Len() > 0 {
			point := pointQueueForWarp.Dequeue()

			for deltaH := -2; deltaH <= 2; deltaH++ {
				for deltaW := -2; deltaW <= 2; deltaW++ {
					if deltaH == 0 && deltaW == 0 {
						continue
					}

					newPoint := Point{point.H + deltaH, point.W + deltaW}
					if !isPassable(&newPoint) {
						continue
					} else if visits[newPoint.H][newPoint.W] {
						continue
					} else if newPoint == goalPoint {
						fmt.Println(warpTimes)
						return
					}

					pointQueueForWalk.Add(&newPoint)
					visits[newPoint.H][newPoint.W] = true
				}
			}
		}
	}

	fmt.Println(-1)
}

type Point struct {
	H int
	W int
}

func (p *Point) AroundPoints() []*Point {
	return []*Point{
		{p.H - 1, p.W},
		{p.H + 1, p.W},
		{p.H, p.W - 1},
		{p.H, p.W + 1},
	}
}

type PointList struct {
	first *PointListNode
	last  *PointListNode
	len   int
}

type PointListNode struct {
	child *PointListNode
	value *Point
}

func NewPointList() *PointList {
	return &PointList{nil, nil, 0}
}

func NewPointListFromArray(a []*Point) *PointList {
	list := NewPointList()
	for _, elem := range a {
		list.Add(elem)
	}
	return list
}

func (list *PointList) Len() int {
	return list.len
}

func (list *PointList) Add(elem *Point) {
	node := PointListNode{nil, elem}
	if list.first == nil {
		list.first = &node
		list.last = &node
	} else {
		list.last.child = &node
		list.last = &node
	}
	list.len++
}

func (list *PointList) Dequeue() *Point {
	value := list.first.value
	list.first = list.first.child
	list.len--
	return value
}

func (list *PointList) Each(f func(elem *Point)) {
	cur := list.first
	for cur != nil {
		f(cur.value)
		cur = cur.child
	}
}

func (list *PointList) ToA() []*Point {
	a := make([]*Point, list.Len())
	{
		index := 0
		list.Each(func(elem *Point) {
			a[index] = elem
			index++
		})
	}
	return a
}

// from [my library](https://github.com/ikngtty/go-contestlib)
// -   math/simple

func Abs(x int) int {
	if x >= 0 {
		return x
	}
	return -x
}

func Min(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}

	min := values[0]
	for _, v := range values {
		if v < min {
			min = v
		}
	}
	return min
}

func Max(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}

	max := values[0]
	for _, v := range values {
		if v > max {
			max = v
		}
	}
	return max
}

func Pow(base, exponent int) int {
	if exponent < 0 {
		panic(fmt.Sprintf("exponent (%d) should not be a minus", exponent))
	}

	answer := 1
	for i := 0; i < exponent; i++ {
		answer *= base
	}
	return answer
}

func Ceil(divident, dividor int) int {
	if dividor == 0 {
		panic("dividor should not be 0")
	}

	quo := divident / dividor
	rem := divident % dividor

	if rem != 0 {
		if (divident > 0 && dividor > 0) ||
			(divident < 0 && dividor < 0) {
			return quo + 1
		}
	}
	return quo
}

// -   sortutil

func ReverseInts(a []int) {
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
}

func ReverseStrings(a []string) {
	sort.Sort(sort.Reverse(sort.StringSlice(a)))
}

// -   io

type Scanner struct {
	bufScanner *bufio.Scanner
}

func NewScanner() *Scanner {
	bufSc := bufio.NewScanner(os.Stdin)
	bufSc.Split(bufio.ScanWords)
	bufSc.Buffer(nil, 100000000)
	return &Scanner{bufSc}
}

func (sc *Scanner) ReadString() string {
	bufSc := sc.bufScanner
	bufSc.Scan()
	return bufSc.Text()
}

func (sc *Scanner) ReadInt() int {
	bufSc := sc.bufScanner
	bufSc.Scan()
	text := bufSc.Text()

	num, err := strconv.Atoi(text)
	if err != nil {
		panic(err)
	}
	return num
}

func (sc *Scanner) ReadFloat() float64 {
	bufSc := sc.bufScanner
	bufSc.Scan()
	text := bufSc.Text()

	num, err := strconv.ParseFloat(text, 64)
	if err != nil {
		panic(err)
	}
	return num
}
