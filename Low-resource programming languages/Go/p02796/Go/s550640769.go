package main

import (
	"fmt"
	"sort"
)

type XL struct {
	X, L int
	Overlap bool
	OverCount int
}

type XlList []XL
func (s XlList) Len() int           { return len(s) }
func (s XlList) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s XlList) Less(i, j int) bool { return s[i].X < s[j].X }

func main() {
	var n int
	fmt.Scanf("%d", &n)

	var robots XlList = make([]XL, n, n)
	for i := 0; i < n; i++ {
		var x, l int
		fmt.Scanf("%d", &x)
		fmt.Scanf("%d", &l)
		robots[i] = XL{x, l, false, 0}
	}
	sort.Sort(robots)

	for {
		maxOverCount := 0
		maxIndex := -1
		for i := 0; i < len(robots); i++ {
			overCount := 0
			r := 0
			for {
				r++
				j := i - r
				if j >= 0 {
					if robots[j].X > robots[i].X-robots[i].L {
						robots[j].Overlap = true
						overCount++
					} else {
						break
					}
				} else {
					break
				}
			}
			r = 0
			for {
				r++
				j := i + r
				if j < len(robots) {
					if robots[j].X < robots[i].X + robots[i].L {
						robots[j].Overlap = true
						overCount++
					} else {
						break
					}
				} else {
					break
				}
			}
			robots[i].OverCount = overCount
			if overCount > maxOverCount {
				maxOverCount = overCount
				maxIndex = i
			}
		}
		if maxIndex == -1 {
			break
		}
		robots = append(robots[:maxIndex], robots[maxIndex+1:]...)
	}
	fmt.Printf("%d\n", len(robots))
}
