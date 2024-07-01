package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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
	left := [2000][2000]int{}
	right := [2000][2000]int{}
	up := [2000][2000]int{}
	down := [2000][2000]int{}
	// left
	var inc int
	for h1 := 0; h1 < h; h1++ {
		for w1 := 0; w1 < w; w1++ {
			if blocks[h1][w1] == ok {
				inc++
				left[h1][w1] = inc
				continue
			}
			inc = 0
			left[h1][w1] = 0
		}
		inc = 0
	}
	// right
	for h1 := 0; h1 < h; h1++ {
		right[h1] = reverse(left[h1])
	}
	// up
	for w1 := 0; w1 < w; w1++ {
		for h1 := 0; h1 < h; h1++ {
			if blocks[h1][w1] == ok {
				inc++
				left[h1][w1] = inc
				continue
			}
			inc = 0
			up[h1][w1] = 0
		}
		inc = 0
	}
	// down
	for h1 := 0; h1 < h; h1++ {
		down[h1] = reverse(up[h1])
	}

	var maxxxxxx int
	var tmp int
	for h1 := 0; h1 < h; h1++ {
		for w1 := 0; w1 < w; w1++ {
			tmp = left[h1][w1] + right[h1][w1] + up[h1][w1] + right[h1][w1]
			if tmp > maxxxxxx {
				maxxxxxx = tmp
			}
		}
	}
	fmt.Println(maxxxxxx)
}

func reverse(numbers [2000]int) [2000]int {
	for i := 0; i < len(numbers)/2; i++ {
		j := len(numbers) - i - 1
		numbers[i], numbers[j] = numbers[j], numbers[i]
	}
	return numbers
}