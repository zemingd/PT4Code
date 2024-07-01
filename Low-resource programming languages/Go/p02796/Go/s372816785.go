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
	fmt.Scanf("%d", &N)
	robots := make(Robots, 0, N)
	for i := 0; i < N; i++ {
		r := Robot{}
		fmt.Scanf("%d %d", &r.X, &r.L)
		r.Min = r.X - r.L + 1
		r.Max = r.X + r.L - 1
		robots = append(robots, r)
	}
	sort.Sort(robots)
	count := 0
	flags := make([]bool, N)
	var max int64
	for i, r := range robots {
		if max >= r.Min {
			flags[i] = false
			continue
		}
		flags[i] = true
		if max < r.Max {
			max = r.Max
		}
	}
	for _, v := range flags {
		if v {
			count++
		}
	}
	fmt.Println(count)
}
