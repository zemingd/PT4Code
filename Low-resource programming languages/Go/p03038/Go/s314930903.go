package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Heap struct {
	data []int
}

func (h *Heap) Len() int           { return len(h.data) }
func (h *Heap) Less(i, j int) bool { return h.data[i] < h.data[j] }
func (h *Heap) Swap(i, j int)      { h.data[i], h.data[j] = h.data[j], h.data[i] }
func (h *Heap) Push(i interface{}) { h.data = append(h.data, i.(int)) }
func (h *Heap) Pop() interface{} {
	i := h.data[len(h.data)-1]
	h.data = h.data[:len(h.data)-1]
	return i
}

type Data struct {
	b, c int
}
type DataSlice struct {
	data []*Data
}

func (s DataSlice) Len() int           { return len(s.data) }
func (s DataSlice) Swap(i, j int)      { s.data[i], s.data[j] = s.data[j], s.data[i] }
func (s DataSlice) Less(i, j int) bool { return s.data[i].c > s.data[j].c }

var sc = bufio.NewScanner(os.Stdin)

func main() {
	buf := make([]byte, 0) 
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)

	n, m := oneInt(), oneInt()
	input := scanNums(n)

	dataSlice := &DataSlice{[]*Data{}}
	for i := 0; i < m; i++ {
		b, c := oneInt(), oneInt()
		dataSlice.data = append(dataSlice.data, &Data{b, c})
	}

	h := calc(input, dataSlice)

	sum := 0
	for _, v := range h.data {
		sum += v
	}
	fmt.Println(sum)

}

func calc(input []int, dataSlice *DataSlice) *Heap {
	h := &Heap{}
	heap.Init(h)
	for _, a := range input {
		heap.Push(h, a)
	}

	sort.Sort(dataSlice)
	for _, d := range dataSlice.data {
		for i := 0; i < d.b; i++ {
			if m, ok := heap.Pop(h).(int); ok {
				if m < d.c {
					heap.Push(h, d.c)
				} else {
					heap.Push(h, m)
					return h
				}
			}
		}
	}
	return h
}

func oneInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func scanNums(len int) (nums []int) {
	for i := 0; i < len; i++ {
		nums = append(nums, oneInt())
	}
	return nums
}
