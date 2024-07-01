package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	ports := scanIntSlice(n)

	visited := map[int]int{}
	town := 1
	jump := 0
	loop := 0
	for true {
		if j, ok := visited[town]; ok {
			loop = j
			break
		}
		visited[town] = jump
		jump++
		town = ports[town-1]
	}

	k = k - loop
	steps := k % (jump - loop)
	target := town
	for steps > 0 {
		target = ports[target-1]
		steps--
	}

	fmt.Printf("%d\n", target)
}

func scanIntSlice(size int) []int {
	input := []int{}
	for i := 0; i < size; i++ {
		var in int
		fmt.Scanf("%d", &in)
		input = append(input, in)
	}
	return input
}
