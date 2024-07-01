package main

import (
	"fmt"
)

func main() {
	var h, w int
	var boolArray [][]bool
	var boolArrayNext [][]bool

	fmt.Scanf("%d %d", &h, &w)
	boolArray = make([][]bool, h)
	boolArrayNext = make([][]bool, h)
	for i := 0; i < h; i++ {
		boolArray[i] = make([]bool, w)
		boolArrayNext[i] = make([]bool, w)
	}
	sharpRune := []rune("#")[0]

	var c rune

	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			fmt.Scanf("%c", &c)
			if c == sharpRune {
				boolArray[i][j] = true
				boolArrayNext[i][j] = true
			} else {
				boolArray[i][j] = false
				boolArrayNext[i][j] = false
			}
		}
		// Dummy
		fmt.Scanf("%c", &c)
	}

	cnt := 0

	_w := func(a int) bool {
		if a < 0 || a >= w {
			return false
		}
		return true
	}
	_h := func(a int) bool {
		if a < 0 || a >= h {
			return false
		}
		return true
	}

	for {
		b := 0
		// Check
		for i := 0; i < h; i++ {
			for j := 0; j < w; j++ {
				if boolArray[i][j] {
					// fmt.Print("#")
					b++
				} else {
					// fmt.Print(".")
				}
			}
			// fmt.Println()
		}
		// fmt.Println()
		if b == h*w {
			break
		}
		// Make black
		for i := 0; i < h; i++ {
			for j := 0; j < w; j++ {
				if boolArray[i][j] {
					if _h(i-1) && _w(j) {
						boolArrayNext[i-1][j] = true // top
					}
					if _h(i) && _w(j+1) {
						boolArrayNext[i][j+1] = true // right
					}
					if _h(i+1) && _w(j) {
						boolArrayNext[i+1][j] = true // bottom
					}
					if _h(i) && _w(j-1) {
						boolArrayNext[i][j-1] = true // left
					}
				}
			}
		}

		// Apply
		for i := 0; i < h; i++ {
			for j := 0; j < w; j++ {
				boolArray[i][j] = boolArrayNext[i][j]
			}
		}
		cnt++
	}

	fmt.Println(cnt)

}
