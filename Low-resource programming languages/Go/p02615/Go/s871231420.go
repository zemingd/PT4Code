package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var lower, higher []int
var heapSize int

func main() {
	var n int
	fmt.Scan(&n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	as := make([]int, n)
	for i := range as {
		sc.Scan()
		as[i], _ = strconv.Atoi(sc.Text())
	}

	sort.Ints(as)
	as = reverse(as)

	lower = make([]int, n+10)
	higher = make([]int, n+1)
	sum := 0
	for i := 0; i < n; i++ {
		c := insert(as[i])
		sum += c
	}
	fmt.Println(sum)
}

func insert(val int) int {
	if heapSize == 0 {
		heapAppend(val, val)
		return 0
	}
	l, r := popFirst()
	heapAppend(val, l)
	heapAppend(val, r)
	return l
}

func popFirst() (int, int) {
	l, h := lower[0], higher[0]
	first, last := 0, heapSize-1
	swap(first, last)
	heapSize--
	heapify(first)
	return l, h
}

func swap(i, j int) {
	lower[i], higher[i], lower[j], higher[j] = lower[j], higher[j], lower[i], higher[i]
}

func heapAppend(l, h int) {
	if l > h {
		l, h = h, l
	}
	last := heapSize
	lower[last] = l
	higher[last] = h
	heapSize++
	heapify(last)
}

func heapify(i int) {
	l := i<<1 + 1
	r := i<<1 + 2
	largest := i
	if l <= heapSize && lower[l] > lower[i] {
		largest = l
	}
	if r <= heapSize && lower[r] > lower[largest] {
		largest = r
	}
	if largest != i {
		swap(i, largest)
		heapify(largest)
	}
}

func reverse(vs []int) []int {
	var res []int
	for i := len(vs) - 1; i >= 0; i-- {
		res = append(res, vs[i])
	}
	return res
}
