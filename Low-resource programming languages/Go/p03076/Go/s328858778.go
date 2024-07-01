package main

import (
	"fmt"
	"math"
	"sort"
)

type byMod []int
type byZeroMod []int

func (s byMod) Len() int {
	return len(s)
}
func (s byMod) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}
func (s byMod) Less(i, j int) bool {
	return s[i]%10 > s[j]%10
}

func (s byZeroMod) Len() int {
	return len(s)
}
func (s byZeroMod) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}
func (s byZeroMod) Less(i, j int) bool {
	return s[i]%10 == 0
}

func main() {
	var intArray []int

	intArray = make([]int, 5)
	i := 0
	for i = 0; i < 5; i++ {
		fmt.Scanf("%d", &intArray[i])
	}
	sort.Sort(byMod(intArray))
	sort.Sort(byZeroMod(intArray))
	res := 0
	l := i - 1
	for p, v := range intArray {
		if p == l {
			res += v
		} else {
			res += int(10 * math.Ceil(float64(v)/float64(10)))
		}
	}
	fmt.Println(res)
}
