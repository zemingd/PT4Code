package main

import (
	"fmt"
	"sort"
)

type number struct {
	n   int
	i   int
	ans int
}

type lessFunc func(r1, r2 *number) bool

type multiSorter struct {
	numbers []number
	less    []lessFunc
}

func (ms *multiSorter) Sort(numbers []number) {
	ms.numbers = numbers
	sort.Sort(ms)
}

func orderedBy(less ...lessFunc) *multiSorter {
	return &multiSorter{
		less: less,
	}
}

func (ms *multiSorter) Len() int      { return len(ms.numbers) }
func (ms *multiSorter) Swap(i, j int) { ms.numbers[i], ms.numbers[j] = ms.numbers[j], ms.numbers[i] }
func (ms *multiSorter) Less(i, j int) bool {
	p, q := &ms.numbers[i], &ms.numbers[j]
	var k int
	for k = 0; k < len(ms.less)-1; k++ {
		less := ms.less[k]
		switch {
		case less(p, q):
			return true
		case less(q, p):
			return false
		}
	}
	return ms.less[k](p, q)
}

func main() {
	ascending := func(r1, r2 *number) bool {
		return r1.n < r2.n
	}
	byIndex := func(r1, r2 *number) bool {
		return r1.i < r2.i
	}

	var N int
	fmt.Scan(&N)
	numbers := make([]number, N)
	for i := range numbers {
		fmt.Scan(&numbers[i].n)
		numbers[i].i = i
	}

	orderedBy(ascending).Sort(numbers)

	for i := range numbers {
		if i+1 <= N/2 {
			numbers[i].ans = numbers[N/2].n
		} else {
			numbers[i].ans = numbers[N/2-1].n
		}
	}

	orderedBy(byIndex).Sort(numbers)

	for _, number := range numbers {
		fmt.Println(number.ans)
	}
}
