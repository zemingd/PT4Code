package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)

	stdin.Scan()
	tiles := stdin.Text()

	bMap := tileMap("0", len(tiles))
	wMap := tileMap("1", len(tiles))
	bCnt := 0
	wCnt := 0

	for i, tile := range tiles {
		if tile != bMap[i] {
			bCnt++
		}
		if tile != wMap[i] {
			wCnt++
		}
	}

	if bCnt < wCnt {
		fmt.Printf("%v\n", bCnt)
	} else {
		fmt.Printf("%v\n", wCnt)
	}
}

func tileMap(sColor string, length int) []rune {
	if length < 1 {
		return []rune("")
	}

	tiles := sColor
	preColor := sColor
	for i := 1; i < length; i++ {
		if preColor == "0" {
			preColor = "1"
		} else {
			preColor = "0"
		}
		tiles += preColor
	}
	return []rune(tiles)
}
