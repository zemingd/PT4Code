package main

import (
	"fmt"
	"os"
	"unicode/utf8"
)

var mark = "#"

func main() {
	var H, W int
	fmt.Scan(&H)
	fmt.Scan(&W)

	inputs := scanStrings(H)
	// fmt.Println(inputs)
	dx := [4]int{1, -1, 0, 0}
	dy := [4]int{0, 0, 1, -1}

	for i, s := range inputs {
		for j, ss := range s {
			if ss != mark {
				continue
			}
			check := false
			for k := 0; k < 4; k++ {
				if (i+dx[k] >= 0 && i+dx[k] < W) && (j+dy[k] >= 0 && j+dy[k] < H) {
					if inputs[i+dx[k]][j+dy[k]] == mark {
						check = true
						// fmt.Println(i, j, i+dx[k], j+dy[k])
						break
					}
				}
			}
			if !check {
				fmt.Println("No")
				os.Exit(0)
			}

		}
	}
	fmt.Println("Yes")

}

func scanStrings(len int) (strings [][]string) {
	var str string
	for i := 0; i < len; i++ {
		fmt.Scanf("%s", &str)
		strings = append(strings, spritString(str))
	}
	return
}

func spritString(input string) (res []string) {
	for i := 0; i < utf8.RuneCountInString(input); i++ {
		res = append(res, input[i:i+1])
	}
	return
}
