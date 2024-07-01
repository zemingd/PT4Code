package main

import (
	"fmt"
	"strconv"
)

var queue = [][]int{}

func add(p []int) {
	n := p[len(p)-1]
	if n == 9 {
		np1 := make([]int, len(p))
		copy(np1, p)
		np2 := make([]int, len(p))
		copy(np2, p)

		np1 = append(np1, 8)
		np2 = append(np2, 9)

		queue = append(queue, np1, np2)
	} else if n == 0 {
		np1 := make([]int, len(p))
		copy(np1, p)
		np2 := make([]int, len(p))
		copy(np2, p)
		np1 = append(np1, 0)
		np2 = append(np2, 1)
		queue = append(queue, np1, np2)
	} else {
		np1 := make([]int, len(p))
		copy(np1, p)
		np2 := make([]int, len(p))
		copy(np2, p)
		np3 := make([]int, len(p))
		copy(np3, p)

		np1 = append(np1, n - 1)
		np2 = append(np2, n)
		np3 = append(np3, n + 1)
		queue = append(queue, np1, np2, np3)
	}
}

func show(p []int) {
	str := ""
	for _, e := range p {
		str += strconv.Itoa(e)
	}
	fmt.Println(str)
}

func main() {
	// Code for D - Lunlun Number
	var k int
	fmt.Scanf("%d", &k)

	for i := 1; i <= 9; i++ {
		queue = append(queue, []int{i})
	}

	for i := 1; i <= k; i++ {
		p := queue[0]
		queue = queue[1:]
		add(p)

		if i == k {
			show(p)
		}
	}
}
