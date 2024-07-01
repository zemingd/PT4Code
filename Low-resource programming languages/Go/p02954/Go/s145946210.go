package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

// S....M....E
// R...RL...LR
func searchRange(text string, start, limit int) (int, int, int) {
	middle := -1

	for i := start; i < limit; i++ {
		if text[i] != 'R' {
			middle = i
			break
		}
	}

	end := limit

	for i := middle; i < limit; i++ {
		if text[i] != 'L' {
			end = i
			break
		}
	}

	return start, middle, end
}

func answer(text string, limit int) {
	start := 0
	middle := 0
	end := 0
	firstPrinted := false

	for end < limit {
		start, middle, end = searchRange(text, start, limit)
		len1 := middle - start
		len2 := end - middle

		for i := start; i < middle-1; i++ {
			if firstPrinted {
				fmt.Print(" ")
			}
			fmt.Print("0")
			firstPrinted = true
		}

		count1 := int(math.Ceil(float64(len1)/2)) + int(math.Floor(float64(len2)/2))
		count2 := int(math.Floor(float64(len1)/2)) + int(math.Ceil(float64(len2)/2))

		if firstPrinted {
			fmt.Print(" ")
		}
		fmt.Printf("%d %d", count1, count2)
		firstPrinted = true

		for i := middle + 1; i < end; i++ {
			if firstPrinted {
				fmt.Print(" ")
			}
			fmt.Print("0")
			firstPrinted = true
		}
		start = end
		firstPrinted = true
	}

	fmt.Println()
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	text := scanner.Text()
	N := len(text)

	answer(text, N)
}
