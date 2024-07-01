package main

import (
	"fmt"
	"sort"
)

type Drink struct {
	value int
	num   int
}

type dr []Drink

func (d dr) Len() int {
	return len(d)
}

func (d dr) Swap(i, j int) {
	d[i], d[j] = d[j], d[i]
}
func (d dr) Less(i, j int) bool {
	return d[i].value < d[j].value
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	list := make(dr, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&list[i].value, &list[i].num)
	}
	sort.Sort(list)

	okane := 0
	numDrink := 0
	for i := 0; i < n; i++ {
		for j := 0; j < list[i].num; j++ {
			if numDrink != m {
				okane += list[i].value
				numDrink++
			} else {
				break
			}
		}
	}
	fmt.Println(okane)
}
