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
	colors[0] = 0
	largestNum := -1
	colorIndex := 0

	for i := 0; i < n; i++ {
		num := nextInt()
		if num > largestNum {
			largestNum = num
		} else {
			colors[colorIndex] = largestNum

			largestIndex := -1
			largestValue := -1
			for i, v := range colors {
				if num > v && v > largestValue {
					largestIndex = i
					largestValue = v
				}
			}

			if largestIndex != -1 {
				largestNum = num
				colorIndex = largestIndex
			} else {
				largestNum = num
				colors = append(colors, num)
				colorIndex = len(colors) - 1
			}
		}
	}

	fmt.Println(len(colors))
}
