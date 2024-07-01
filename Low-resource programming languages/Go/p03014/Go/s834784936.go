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
	ok    = rune(46) // string(rune(46)) == "."
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	var h, w int
	if sc.Scan() {
		slice := strings.Split(sc.Text(), " ")
		h, _ = strconv.Atoi(slice[0])
		w, _ = strconv.Atoi(slice[1])
	}
	var blocks [maxwh][maxwh]rune
	var s string
	for i := 1; i <= h; i++ {
		sc.Scan()
		s = sc.Text()
		for j, _s := range s {
			blocks[i][j+1] = _s
		}
	}

	sa := [maxwh][maxwh]int{}
	yu := [maxwh][maxwh]int{}
	jo := [maxwh][maxwh]int{}
	ge := [maxwh][maxwh]int{}
	// sa
	for y := 1; y <= h; y++ {
		for x := 1; x <= w; x++ {
			if blocks[y][x] == ok {
				sa[y][x] = sa[y][x-1] + 1
			}
		}
	}
	// yu
	for y := h; y >= 1; y-- {
		for x := w; x >= 1; x-- {
			if blocks[y][x] == ok {
				yu[y][x] = yu[y][x+1] + 1
			}
		}
	}
	// jo
	for y := 1; y <= h; y++ {
		for x := 1; x <= w; x++ {
			if blocks[y][x] == ok {
				jo[y][x] = jo[y-1][x] + 1
			}
		}
	}
	// ge
	for y := h; y >= 1; y-- {
		for x := w; x >= 1; x-- {
			if blocks[y][x] == ok {
				ge[y][x] = ge[y+1][x] + 1
			}
		}
	}

	var maxxxxxx int
	var tmp int
	for y := 1; y <= h; y++ {
		for x := 1; x <= w; x++ {
			tmp = jo[x][y] + ge[x][y] + sa[x][y] + yu[x][y] - 3
			if tmp > maxxxxxx {
				maxxxxxx = tmp
			}
		}
	}
	fmt.Println(maxxxxxx)
}
