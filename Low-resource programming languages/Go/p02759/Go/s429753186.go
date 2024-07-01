package main

import (
	"fmt"
	"sort"
)

type Poll struct {
	name  string
	value int
}

type List []Poll

func (l List) Len() int {
	return len(l)
}

func (l List) Swap(i, j int) {
	l[i], l[j] = l[j], l[i]
}
func (l List) Less(i, j int) bool {
	if l[i].value == l[j].value {
		return (l[i].name < l[j].name)
	}
	return (l[i].value > l[j].value)
}

func main() {
	var n int
	fmt.Scan(&n)

	list := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&list[i])
	}
	m := map[string]int{}
	for i := 0; i < n; i++ {
		m[list[i]]++
	}

	a := List{}
	for k, v := range m {
		e := Poll{k, v}
		a = append(a, e)
	}
	sort.Sort(a)
	fmt.Println(a[0].name)
	for i := 1; i < len(a); i++ {
		if a[i].value == a[i-1].value {
			fmt.Println(a[i].name)
		} else {
			break
		}
	}

}
