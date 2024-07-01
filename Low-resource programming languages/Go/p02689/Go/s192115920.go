package main

import (
	"fmt"
)

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	Hs := make([]int, N)
	for i, _ := range Hs {
		fmt.Scan(&Hs[i])
	}

	As := make([]int, M)
	Bs := make([]int, M)
	result := make([]bool, N)
	for i, _ := range As {
		fmt.Scan(&As[i], &Bs[i])
		if Hs[As[i]-1] > Hs[Bs[i]-1] {
			result[Bs[i]-1] = true
		} else if Hs[As[i]-1] < Hs[Bs[i]-1] {
			result[As[i]-1] = true
		} else {
			result[As[i]-1] true
			result[Bs[i]-1] true
		}
	}

	counter := 0
	for _, v := range result {
		if v != true {
			counter++
		}
	}
	fmt.Println(counter)
}
