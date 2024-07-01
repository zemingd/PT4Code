package main

import (
	"fmt"
	"math"
)

func main() {
	var d, g int
	fmt.Scan(&d, &g)
	problems := make([]Problem, d)
	for i := 0; i < d; i++ {
		var count, bonus int
		fmt.Scan(&count, &bonus)
		problems[i] = Problem{count, (i + 1) * 100, bonus}
	}
	mn := math.MaxInt32
	for i := 0; i < 1 << uint(d); i++ {
		current, count := 0, 0
		noneCompletes := make([]Problem, 0)
		for j := 0; j < d; j++ {
			if 1 & (uint(i) >> uint(j)) == 1 {
				current += problems[j].CompletePoint()
				count += problems[j].Count
			} else {
				noneCompletes = append(noneCompletes, problems[j])
			}
		}
		for j := len(noneCompletes) - 1; j >= 0; j-- {
			if current >= g {
				break
			}
			p := noneCompletes[j]
			for k := 0; k < p.Count; k++ {
				current += p.Point
				count++
				if current >= g {
					break
				}
			}
		}
		if current >= g && count < mn {
			mn = count
		}
	}
	fmt.Println(mn)
}

type Problem struct {
	Count int
	Point int
	Bonus int
}

func (p *Problem) CompletePoint() int {
	return p.Count * p.Point + p.Bonus
}