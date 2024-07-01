package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a[i])
		a[i]--
	}
	answer := finalTown(n, k, a) + 1
	fmt.Println(answer)
}

func finalTown(n, k int, a []int) int {
	beforeLoop := 1
	loopStart := 0
	loopLength := 1
	next := 0
	visited := make([]bool, n)
	visited[0] = true
	for {
		next = a[next]
		if visited[next] {
			// loop start
			loopStart = next
			for t, length := a[next], 2; t != loopStart; t, length = a[t], length+1 {
				loopLength = length
			}
			break
		}
		visited[next] = true
		beforeLoop++
	}
	beforeLoop = beforeLoop - loopLength
	if beforeLoop < 0 {
		panic("beforeLoop must be equal or greather than 0")
	}
	// fmt.Println("k-beforeLoop", k-beforeLoop)
	if k-beforeLoop < 0 {
		town := a[0]
		if k == 1 {
			return town
		}
		for i := 0; i < k; i++ {
			// fmt.Println("town", town)
			town = a[town]
		}
		return town
	}
	m := (k - beforeLoop) % loopLength
	town := loopStart
	for i := 0; i < m; i++ {
		town = a[town]
	}
	// fmt.Println(beforeLoop, loopStart, loopLength)
	return town
}
