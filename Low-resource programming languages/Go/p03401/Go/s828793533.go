package main

import "fmt"

func abs(a, b int) int {
	if a < b {
		return b - a
	} else {
		return a - b
	}
}

type Table []int

func (t *Table) At(i int) int {
	i += t.Size()
	return (*t)[i%t.Size()]
}

func (t *Table) Size() int {
	return len(*t)
}

func (t *Table) Cost(i, j int) int {
	return abs(t.At(i), t.At(j))
}

func (t *Table) FullCost() int {
	cost := 0
	for i, _ := range *t {
		cost += t.Cost(i, i+1)
	}
	return cost
}

func (t *Table) ReductedCost(i int) int {
	return t.Cost(i-1, i) + t.Cost(i, i+1) - t.Cost(i-1, i+1)
}

func main() {
	var n int
	fmt.Scan(&n)
	var as Table = make([]int, n+1)

	as[0] = 0
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i+1])
	}

	full := as.FullCost()
	for i, _ := range as {
		fmt.Println(full - as.ReductedCost(i))
	}
}
