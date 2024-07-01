package main

import (
	"fmt"
	"sort"
)

type Robot struct {
	Place  int
	Length int
	Min int
	Max int
}

func main() {
	var iCount int
	fmt.Scanf("%d", &iCount)

	var robots []Robot

	for i := 0; i < iCount; i++ {
		var robot, length int
		fmt.Scanf("%d %d", &robot, &length)

		robots = append(robots, Robot{
			Place: robot,
			Length: length,
			Min: robot - length,
			Max: robot + length,
		})
	}

	sort.Slice(robots, func(i, j int) bool {
		return robots[i].Max < robots[j].Max
	})

	ret := 0
	cur := -1000000000
	for _, v := range robots {
		if  cur <= v.Min {
			ret++
			cur = v.Max

		}
	}
	fmt.Printf("%d\n", ret)
}
