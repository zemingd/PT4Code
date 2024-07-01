package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)

	num := make([]int, n)
	for i := range num {
		num[i] = -1
	}

	var s, c int
	duplicatedDefinition := false
	for i := 0; i < m; i++ {
		fmt.Scanf("%d %d", &s, &c)
		if num[s-1] != -1 && num[s-1] != c {
			duplicatedDefinition = true
		}
		num[s-1] = c
	}
	if duplicatedDefinition {
		fmt.Println(-1)
		return
	}
	if (num[0] == 0 && n == 1) || (num[0] == -1 && n == 1) {
		fmt.Println(0)
		return
	} else if num[0] == 0 {
		fmt.Println(-1)
		return
	}

	answer := ""
	for i, val := range num {
		if val == -1 {
			if i == 0 {
				val = 1
			} else {
				val = 0
			}
		}
		answer += fmt.Sprintf("%d", val)
	}

	fmt.Println(answer)

}
