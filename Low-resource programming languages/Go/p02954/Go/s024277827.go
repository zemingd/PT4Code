package main

import "fmt"

func main() {
	var S string
	fmt.Scanf("%s", &S)
	states := make([][]int, 1001)

	slen := len(S)
	states[0] = make([]int, slen)
	for i := 0; i < slen; i++ {
		states[0][i] = 1
	}

	for i := 1; i <= 1000; i++ {
		states[i] = make([]int, slen)
		for j, c := range S {
			if c == 'R' {
				states[i][j+1] += states[i-1][j]
			} else {
				states[i][j-1] += states[i-1][j]
			}
		}
	}

	for _, n := range states[1000] {
		fmt.Println(n)
	}
}
