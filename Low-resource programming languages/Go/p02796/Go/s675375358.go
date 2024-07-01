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

type RobotSort []Robot

func (p RobotSort) Len() int {
	return len(p)
}

func (p RobotSort) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p RobotSort) Less(i, j int) bool {
	return p[i].Max < p[j].Max
}

func main() {
	var iCount int
	fmt.Scanf("%d", &iCount)

	var robots RobotSort

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

	sort.Sort(robots)

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
