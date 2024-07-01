package main

import (
	"fmt"
	"math"
	"sort"
)

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
	return (r[i].Max < r[j].Max) && (r[i].Min < r[j].Min)
}

func (r Robots) Len() int {
	return len(r)
}

func (r Robots) Swap(i, j int) {
	r[i], r[j] = r[j], r[i]
}

func main() {
	var N int
	fmt.Scanf("%d", &N)
	robots := make(Robots, N)
	for i := 0; i < N; i++ {
		r := Robot{}
		fmt.Scanf("%d %d", &r.X, &r.L)
		r.Min = r.X - r.L
		r.Max = r.X + r.L
		robots[i] = r
	}
	sort.Sort(robots)
	count := 0
	var max int64
	max = math.MinInt64
	for _, r := range robots {
		if max >= r.Min {
			continue
		}
		count++
		if max < r.Max {
			max = r.Max
		}
	}
	fmt.Println(count)
}
