package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func next() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func main() {
	scanner.Split(bufio.ScanWords)

	n := nextInt()
	colors := make([]int, 1)
	colors[0] = -1
	colorIndex := 0

	for i := 0; i < n; i++ {
		num := nextInt()
		if num > colors[colorIndex] {
			colors[colorIndex] = num
		} else {
			found := false
			for j := len(colors) - 1; j >= 0; j-- {
				if colors[j] < num {
					colorIndex = j
					colors[colorIndex] = num
					found = true
					break
				}
			}

			if !found {
				colors = append(colors, num)
				colorIndex = len(colors) - 1
			}
		}
	}

	fmt.Println(len(colors))
}
