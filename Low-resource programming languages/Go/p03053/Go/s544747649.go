package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func IsFull(square [][]rune) bool {
	for _, line := range square {
		if !IsDark(line) {
			return false
		}
	}
	return true
}

func IsDark(line []rune) bool {
	for _, s := range line {
		if s == '.' {
			return false
		}
	}
	return true
}

func main() {
	var h, w int
	fmt.Scanf("%d %d", &h, &w)

	square := make([][]rune, 0)
	for i := 0; i < h; i++ {
		sc.Scan()
		line := sc.Text()
		square = append(square, []rune(line))
	}
	count := 0
	for !IsFull(square) {
		change := make([][]int, 0)
		for i, line := range square {
			for j, s := range line {
				if s == '#' {
					if i > 0 {
						change = append(change, []int{i - 1, j})
					}
					if j > 0 {
						change = append(change, []int{i, j - 1})
					}
					if i < len(square)-1 {
						change = append(change, []int{i + 1, j})
					}
					if j < len(line)-1 {
						change = append(change, []int{i, j + 1})
					}
				}
			}
		}
		for _, target := range change {
			square[target[0]][target[1]] = '#'
		}
		count += 1
	}
	fmt.Println(count)
}
