package main

import "fmt"

import "sort"

// Robot is a struct.
type Robot struct {
	X   int64
	L   int64
	Min int64
	Max int64
}

// Robots is robots.
type Robots []Robot

// Less .
func (r Robots) Less(i, j int) bool {
	return r[i].Max < r[j].Max
}

func (r Robots) Len() int {
	return len(r)
}

func (r Robots) Swap(i, j int) {
	r[i], r[j] = r[j], r[i]
}

func main() {
	var N int
	fmt.Scanf("%d", N)
	robots := make(Robots, 0, N)
	for i := 0; i < N; i++ {
		r := robots[i]
		fmt.Scanf("%d %d", &r.X, &r.L)
		r.Min = r.X - r.L + 1
		r.Max = r.X + r.L - 1
	}
	sort.Sort(robots)
	count := 0
	flags := make([]bool, 0, N)
	for i, r := range robots {
		cover := false
		for j := 0; j < i; j++ {
			if !flags[j] {
				continue
			}
			if robots[j].Max >= r.Min {
				cover = true
				break
			}
		}
		flags[i] = !cover
	}
	for _, v := range flags {
		if v {
			count++
		}
	}
	fmt.Println(count)
}
