package main

import (
	"fmt"
	"sort"

	"math"
)

type (
	Practice struct {
		No    int
		cnt   int
		bonus int
	}
	PS []Practice
)

var N, G, C, B int

func main() {
	fmt.Scan(&N, &G)
	var PA PS
	for i := 0; i < N; i++ {
		fmt.Scan(&C, &B)
		PA = append(PA, Practice{No: i + 1, cnt: C, bonus: B})
	}
	sort.Sort(PA)
	var mins []int
	for i := 0; i < len(PA); i++ {
		mins = append(mins, f(PA[i:], 0, 0))
	}
	min := math.MaxInt64
	for i := 0; i < len(mins); i++ {
		if mins[i] > 0 && mins[i] < min {
			min = mins[i]
		}
	}
	fmt.Println(min)
}

func f(PA PS, sum int, cnt int) int {
	if len(PA) == 0 {
		return -1
	}

	v := (PA[0].No * 100) * PA[0].cnt
	w := v + PA[0].bonus
	for i := 0; i < PA[0].cnt; i++ {
		if sum+(PA[0].No*100)*(i+1) >= G {
			return cnt + (i + 1)
		}
	}
	if sum+w >= G {
		return cnt + PA[0].cnt
	} else {
		return f(PA[1:], sum+w, cnt+PA[0].cnt)
	}
	return -1
}

func (p PS) Len() int           { return len(p) }
func (p PS) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }
func (p PS) Less(i, j int) bool { return p[i].No > p[j].No }
