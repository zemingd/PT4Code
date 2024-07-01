package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	D, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	G, _ := strconv.Atoi(sc.Text())

	problems := make([][]int, D)
	for i := 0; i < D; i++ {
		sc.Scan()
		p, _ := strconv.Atoi(sc.Text())

		sc.Scan()
		c, _ := strconv.Atoi(sc.Text())

		problems[i] = []int{p, c}
	}

	minCount := math.MaxInt64
	for i := 0; i < 2<<uint(D); i++ {
		count := 0
		score := 0
		maxZeroIndex := -1
		for j := 0; j < D; j++ {
			if i>>uint(j)&1 == 1 {
				problem := problems[j]
				count += problem[0]
				score += problem[1] + problem[0]*(j+1)*100
			} else {
				maxZeroIndex = j
			}
		}

		if score >= G {
			if count < minCount {
				minCount = count
			}
		} else if maxZeroIndex != -1 {
			restCount := (G - score) / ((maxZeroIndex + 1) * 100)
			if (G-score)%((maxZeroIndex+1)*100) != 0 {
				restCount++
			}
			if restCount <= problems[maxZeroIndex][0] {
				count += restCount
				if count < minCount {
					minCount = count
				}
			}
		}
	}
	fmt.Println(minCount)
}

func min(s ...int) int {
	minContent := s[0]
	for _, el := range s {
		if el < minContent {
			minContent = el
		}
	}
	return minContent
}
