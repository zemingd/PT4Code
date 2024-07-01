package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	edges := make(map[int]map[int]int)
	for i := 0; i < n; i++ {
		edges[i] = make(map[int]int)
	}

	for i := 0; i < n-1; i++ {
		var u, v, w int
		fmt.Scan(&u, &v, &w)
		u--
		v--
		edges[u][v] = w
		edges[v][u] = w
	}

	weights := make([]int, n)
	for i := 0; i < n; i++ {
		weights[i] = -1
	}

	q := make([]int, 0)
	q = append(q, 0)
	weights[0] = 0

	for len(q) > 0 {
		v := q[0]
		q = q[1:]

		e := edges[v]
		for u, w := range e {
			if weights[u] != -1 {
				continue
			}
			weights[u] = weights[v] + w
			q = append(q, u)
		}
	}

	for i := 0; i < n; i++ {
		fmt.Println(weights[i] % 2)
	}
}
