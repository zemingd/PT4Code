package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {

	scanner := bufio.NewScanner(os.Stdin)
	var D, G int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d", &D, &G)

	ps := make([]int, D)
	cs := make([]int, D)
	for i := 0; i < D; i++ {
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d %d", &ps[i], &cs[i])
	}

	ans := math.MaxInt64
	for index := uint(0); index < 1<<uint(D); index++ {
		targets := make(map[int]struct{})
		for shift := uint(0); shift < uint(D); shift++ {
			if ((index >> shift) & 1) == 1 {
				targets[int(shift)] = struct{}{}
			}
		}

		count, cost := 0, 0
		// get bonus
		for i, _ := range targets {
			cost = cost + ps[i]*100*(i+1) + cs[i]
			count = count + ps[i]
		}
		if cost < G {
		B: // without bonus
			for i := D - 1; i >= 0; i-- {
				if _, e := targets[i]; e {
					continue
				}
				for j := 0; j < ps[i]-1; j++ {
					cost = cost + 100*(i+1)
					count++
					if cost >= G {
						break B
					}
				}
			}
		}

		if cost >= G {
			ans = min(ans, count)
		}
	}
	fmt.Println(ans)

}

func min(ns ...int) int {
	ret := math.MaxInt64
	for _, n := range ns {
		if n < ret {
			ret = n
		}
	}
	return ret
}
