package main

import "fmt"

func main() {
	var N int
	var S string
	fmt.Scan(&N)
	fmt.Scan(&S)
	list := make([]string, N)

	var R, G, B []int
	for i := 0; i < N; i++ {
		j := S[i : i+1]
		if j == "R" {
			R = append(R, i+1)
		}
		if j == "G" {
			G = append(G, i+1)
		}
		if j == "B" {
			B = append(B, i+1)
		}
		list[i] = j
	}

	max := len(R) * len(G) * len(B)
	var count int
	for i := 0; i < N-2; i++ {
		for j := i + 1; j < N-1; j++ {
			k := 2*j - i
			if k >= len(list) {
				continue
			}
			if list[i] != list[j] && list[j] != list[k] && list[k] != list[i] {
				count++
				continue
			}
		}
	}
	fmt.Println(max - count)

}
