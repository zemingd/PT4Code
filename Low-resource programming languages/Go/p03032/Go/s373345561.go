package main

import (
	"fmt"
)

func main() {
	var n, k, v int
	fmt.Scan(&n)
	fmt.Scan(&k)

	var vs []int
	for i := 0; i < n; i++ {
		fmt.Scan(&v)
		vs = append(vs, v)
	}
	fvs := make([]int, len(vs))
	copy(fvs, vs)

	max := 0
	var hands []int

	for i := 0; i <= k; i++ {
		for j := 0; j <= k - i; j++ {
			vs = fvs
			hands = []int{}

			a, b := 0, 0
			for x := 0; x < i; x++ {
				if len(vs) == 0 {
					break
				}
				hands = append(hands, opeA(&vs))
				a++
			}

			for x := 0; x < j; x++ {
				if len(vs) == 0 {
					break
				}
				hands = append(hands, opeB(&vs))
				b++
			}

			for x := 0; x < k - a - b; x++ {
				opeC(&hands)
			}

			vSum := sum(hands)
			if max < vSum {
				max = vSum
			}
		}
	}

	fmt.Println(max)
}

func opeA(vs *[]int) int {
	v := (*vs)[0]
	*vs = (*vs)[1:]

	return v
}

func opeB(vs *[]int) int {
	v := (*vs)[len(*vs) - 1]
	*vs = (*vs)[:len(*vs) - 1]

	return v
}

func opeC(vs *[]int) {
	if len(*vs) == 0 {
		return
	}

	minIndex := 0
	min := (*vs)[0]

	for pos, v := range *vs {
		if v < min {
			min = v
			minIndex = pos
		}
	}

	*vs = append((*vs)[:minIndex], (*vs)[minIndex+1:]...)
}

func sum(vs []int) int {
	sum := 0
	for i := 0; i < len(vs); i++ {
		sum += vs[i]
	}
	return sum
}