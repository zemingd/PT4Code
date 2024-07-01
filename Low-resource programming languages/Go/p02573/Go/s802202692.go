package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func first(m map[int]struct{}) int {
	for k, _ := range m {
		return k
	}

	return 0
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)

	n := nextInt()
	m := nextInt()

	v := make(map[int]map[int]struct{})

	for i := 0; i < m; i++ {
		a := nextInt()
		b := nextInt()

		if len(v[a]) == 0 {
			v[a] = make(map[int]struct{})
		}
		v[a][b] = struct{}{}

		if len(v[b]) == 0 {
			v[b] = make(map[int]struct{})
		}
		v[b][a] = struct{}{}
	}

	unvisited := make(map[int]struct{})

	for i := 1; i <= n; i++ {
		unvisited[i] = struct{}{}
	}

	maxGroupSize := 0
	for len(unvisited) > 0 {
		groupSize := 0
		startNode := first(unvisited)
		q := []int{startNode}

		delete(unvisited, startNode)

		for len(q) > 0 {
			node := q[0]
			q = q[1:]
			groupSize++

			if _, ok := v[node]; !ok {
				// no edge
				continue
			}

			for nextNode, _ := range v[node] {
				if _, ok := unvisited[nextNode]; ok {
					q = append(q, nextNode)
					delete(unvisited, nextNode)
				}
			}
		}

		if groupSize > maxGroupSize {
			maxGroupSize = groupSize
		}
	}

	fmt.Println(maxGroupSize)
}
