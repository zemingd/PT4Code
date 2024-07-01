package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

type Clue struct {
	x int
	y int
	h int
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	nClues := scanInt(sc)

	clues1 := make([]Clue, 0, nClues)
	clues2 := make([]Clue, 0, nClues)
	for i := 0; i < nClues; i++ {
		x := scanInt(sc)
		y := scanInt(sc)
		h := scanInt(sc)
		if h > 0 {
			clues1 = append(clues1, Clue{x, y, h})
		} else {
			clues2 = append(clues2, Clue{x, y, h})
		}
	}

	height := -1
	centerX := -1
	centerY := -1

LOOP_X:
	for cx := 0; cx <= 100; cx++ {
		for cy := 0; cy <= 100; cy++ {
			height = -1
			ok := true

			for _, clue := range clues1 {
				sum := int(math.Abs(float64(clue.x-cx)) + math.Abs(float64(clue.y-cy)))
				if height == -1 {
					height = sum + clue.h
				} else if sum+clue.h != height {
					ok = false
					break
				}
			}

			if ok {
				if height == -1 {
					clue := clues2[0]
					height = int(math.Abs(float64(clue.x-cx)) + math.Abs(float64(clue.y-cy)))
				} else {
					for _, clue := range clues2 {
						sum := int(math.Abs(float64(clue.x-cx)) + math.Abs(float64(clue.y-cy)))
						if sum < height {
							ok = false
							break
						}
					}
				}

				if ok {
					centerX = cx
					centerY = cy
					break LOOP_X
				}
			}
		}
	}

	fmt.Println(centerX, centerY, height)
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}