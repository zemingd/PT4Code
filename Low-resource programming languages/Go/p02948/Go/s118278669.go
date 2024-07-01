package main

import (
	"fmt"
)

func main() {
	var N int
	var M int
	fmt.Scanf("%d %d", &N, &M)
	m := map[int][]int{}
	for i:=0; i<N; i++{
		var a int
		var b int
		fmt.Scanf("%d %d", &a, &b)
		m[a] = append(m[a], b)
	}

	total := 0
	for i:=1; i <= M; i++ {
		maxA := 0
		maxB := 0
		index := -1
		for j:= 1 ; j <= i; j++ {
			for k, s := range m[j] {
				if s > maxB {
					maxB = s
					maxA = j
					index = k
				}
			}
		}

		if index < 0 {
			continue
		}
		total += maxB

		m[maxA] = append(m[maxA][:index], m[maxA][index+1:]...)
	}

	fmt.Printf("%d", total)
}
