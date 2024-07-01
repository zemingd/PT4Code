package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

const (
	maxwh = 2000 + 2
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	var h, w int
	if sc.Scan() {
		slice := strings.Split(sc.Text(), " ")
		h, _ = strconv.Atoi(slice[0])
		w, _ = strconv.Atoi(slice[1])
	}
	var blocks [][]rune
	ok := rune(46) // string(rune(46)) == "."
	for i := 0; i < h; i++ {
		sc.Scan()
		blocks = append(blocks, []rune(sc.Text()))
	}

	sa := [maxwh][maxwh]int{}
	yu := [maxwh][maxwh]int{}
	jo := [maxwh][maxwh]int{}
	ge := [maxwh][maxwh]int{}
	// sa
	for y := 0; y < h; y++ {
		for x := 0; x < w; x++ {
			if blocks[y][x] == ok {
				sa[y][x] = sa[y][x-1] + 1
			}
		}
	}
	// yu
	for y := h - 1; y >= 0; y-- {
		for x := w - 1; x >= 0; x-- {
			if blocks[y][x] == ok {
				yu[y][x] = yu[y][x+1] + 1
			}
		}
	}
	// jo
	for y := 0; y < h; y++ {
		for x := 0; x < w; x++ {
			if blocks[y][x] == ok {
				jo[y][x] = jo[y-1][x] + 1
			}
		}
	}
	// ge
	for y := h - 1; y >= 0; y-- {
		for x := w - 1; x >= 0; x-- {
			if blocks[y][x] == ok {
				ge[y][x] = ge[y+1][x] + 1
			}
		}
	}

	var maxxxxxx int
	var tmp int
	for h1 := 0; h1 < h; h1++ {
		for w1 := 0; w1 < w; w1++ {
			tmp = sa[h1][w1] + yu[h1][w1] + jo[h1][w1] + ge[h1][w1] - 3
			if tmp > maxxxxxx {
				maxxxxxx = tmp
			}
		}
	}
	fmt.Println(maxxxxxx)
}
