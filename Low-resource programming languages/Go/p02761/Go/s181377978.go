package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)

	pos := []int{-1, -1, -1}
	for i := 0; i < m; i++ {
		var s, c int
		fmt.Scanf("%d %d", &s, &c)
		if pos[s-1] == -1 {
			pos[s-1] = c
		} else if pos[s-1] != c {
			pos[s-1] = -2
		}
	}

	if pos[0] == -2 || pos[1] == -2 || pos[2] == -2 {
		fmt.Println("-1")
	} else if n != 1 && pos[0] == 0 {
		fmt.Println("-1")
	} else {
		if pos[0] == -1 {
			fmt.Print("1")
		} else {
			fmt.Print(pos[0])
		}
		for i := 1; i < n; i++ {
			if pos[i] == -1 {
				fmt.Print("0")
			} else {
				fmt.Print(pos[i])
			}
		}
		fmt.Println("")
	}

}
