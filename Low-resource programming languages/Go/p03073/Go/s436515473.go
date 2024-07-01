package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)

	stdin.Scan()
	text := stdin.Text()
	tiles := strings.Split(text, "")

	bCnt := 0
	wCnt := 0
	preTile := ""

	for _, tile := range tiles {
		if preTile != tile {
			if tile == "0" {
				bCnt++
			} else {
				wCnt++
			}
			preTile = tile
		}
	}

	if bCnt < wCnt {
		fmt.Printf("%v\n", bCnt)
	} else {
		fmt.Printf("%v\n", wCnt)
	}
}
