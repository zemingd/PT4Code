package main

import "fmt"

type node struct {
	val    int
	parent int
}

type nodes []node

func main() {
	var n, q int
	fmt.Scan(&n)
	fmt.Scan(&q)
	ns := make(nodes, n+1)
	for i := 0; i < n-1; i++ {
		var parent, child int
		fmt.Scan(&parent)
		fmt.Scan(&child)
		ns[child].parent = parent
	}

	for i := 0; i < q; i++ {
		var a, b int
		fmt.Scan(&a)
		fmt.Scan(&b)
		ns[a].val += b
	}
	for i := 1; i < len(ns); i++ {
		ns[i].val += ns[ns[i].parent].val
		fmt.Printf("%d", ns[i].val)
		if i == len(ns)-1 {
			fmt.Print("\n")
			continue
		}
		fmt.Print(" ")
	}
}
