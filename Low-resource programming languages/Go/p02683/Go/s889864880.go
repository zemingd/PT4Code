package main

import (
	"fmt"
	"sort"
)

func main() {
	var (
		bookNum   int
		studyNum  int
		goalLevel int
	)
	fmt.Scan(&bookNum, &studyNum, &goalLevel)

	bookPrices := []int{}
	levels := [][]int{}
	for i := 0; i < bookNum; i++ {
		bookPrice := 0
		fmt.Scan(&bookPrice)
		bookPrices = append(bookPrices, bookPrice)

		bookLevels := []int{}
		for j := 0; j < studyNum; j++ {
			level := 0
			fmt.Scan(&level)
			bookLevels = append(bookLevels, level)
		}
		levels = append(levels, bookLevels)
	}

	okPrices := []int{}
	for bits := 0; bits < (1 << uint64(bookNum)); bits++ {
		sumPrice := 0
		levelsums := make(map[int]int)

		for i := 0; i <= bookNum; i++ {
			if (bits>>uint64(i))&1 == 1 {
				sumPrice += (bookPrices[i])
				for j, v := range levels[i] {
					levelsums[j] = levelsums[j] + v
				}
			}
		}

		okNum := 0
		for _, v := range levelsums {
			if v >= goalLevel {
				okNum++
			}
			if okNum == studyNum {
				okPrices = append(okPrices, sumPrice)
			}
		}
	}

	if len(okPrices) == 0 {
		fmt.Println("-1")
	} else {
		fmt.Println(minInt(okPrices))
	}

}

func minInt(a []int) int {
	sort.Sort(sort.IntSlice(a))
	return a[0]
}
