package main

import (
	"fmt"
	"sort"
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

func main() {
	n, m := oneInt(), oneInt()
	input := scanNums(n)

	dataSlice := &DataSlice{[]*Data{}}
	for i := 0; i < m; i++ {
		b, c := oneInt(), oneInt()
		dataSlice.data = append(dataSlice.data, &Data{b, c})
	}

	ans := calc(input, dataSlice, n)

	fmt.Println(ans)

}

func calc(input []int, dataSlice *DataSlice, n int) int {
	for _, a := range input {
		dataSlice.data = append(dataSlice.data, &Data{1, a})
	}

	sort.Sort(dataSlice)

	count := 0
	sum := 0
	for _, d := range dataSlice.data {
		for i := 0; i < d.b; i++ {
			if count == n {
				return sum
			}
			count++
			sum += d.c
		}
	}
	return sum
}

func oneInt() int {
	var a int
	fmt.Scan(&a)
	return a
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
