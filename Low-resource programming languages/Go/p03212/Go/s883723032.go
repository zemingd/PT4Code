package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var s string
	fmt.Scanln(&s)

	size := len(s)
	n, _ := strconv.Atoi(s)

	p3 := 9
	cnt := 0
	for i := 3; i < size; i++ {
		p3 *= 3
		p2 := 1 << uint(i)
		cnt += p3 - p2*3 + 3
	}

	ds := make([]int, size)

	base3 := make([]int, len(ds))
	base10 := make([]int, len(ds))
	for i, _ := range ds {
		j := len(ds) - i - 1
		base3[j] = int(math.Pow(3, float64(i)))
		base10[j] = int(math.Pow(10, float64(i)))
	}

	masks := []int{1, 2, 4}
	vals := []int{3, 5, 7}

	nLoop := base3[0] * 3
	for t := 1; t < nLoop; t++ {
		mask := 0
		sum := 0
		for i, u := range base3 {
			if t%u == 0 {
				ds[i] = (ds[i] + 1) % 3
			}
			mask = mask | masks[ds[i]]
			sum += vals[ds[i]] * base10[i]
		}
		if sum > n {
			break
		}
		if mask == 7 {
			cnt += 1
		}
	}

	fmt.Println(cnt)
}
