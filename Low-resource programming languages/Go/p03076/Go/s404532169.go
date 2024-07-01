package main

import (
	"fmt"
	"sort"
)

type Dish struct {
	Time int
	Diff int
}
type Dishs []Dish

func (p Dishs) Len() int {
	return len(p)
}

func (p Dishs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

type ByDiff struct {
	Dishs
}

func (b ByDiff) Less(i, j int) bool {
	return b.Dishs[i].Diff > b.Dishs[j].Diff
}

func main() {
	var a, b, c, d, e int
	fmt.Scan(&a, &b, &c, &d, &e)
	dish := []Dish{
		{a, (10 - a%10) % 10},
		{b, (10 - b%10) % 10},
		{c, (10 - c%10) % 10},
		{d, (10 - d%10) % 10},
		{e, (10 - e%10) % 10},
	}
	// fmt.Println(dish)
	sort.Sort(ByDiff{dish})
	// fmt.Println(dish)
	fmt.Println(dish[0].Time + dish[1].Time + dish[1].Diff + dish[2].Time +
		dish[2].Diff + dish[3].Time + dish[3].Diff + dish[4].Time + dish[4].Diff)
}
