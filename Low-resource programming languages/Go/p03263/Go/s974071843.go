// https://www.youtube.com/watch?v=zu0-rIh4ZXM

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Path struct {
	y1 int
	x1 int
	y2 int
	x2 int
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	h := scanInt(sc)
	w := scanInt(sc)

	paths := make([]Path, 0)
	moves := make([]int, w)

	for y := 0; y < h-1; y++ {
		for x := 0; x < w; x++ {
			coins := scanInt(sc) + moves[x]
			moves[x] = coins % 2
			if moves[x] == 1 {
				paths = append(paths, Path{y, x, y + 1, x})
			}
		}
	}

	y := h - 1
	for x := 0; x < w; x++ {
		coins := scanInt(sc) + moves[x]
		if coins%2 == 1 && x < w-1 {
			moves[x+1] += coins % 2
			paths = append(paths, Path{y, x, y, x + 1})
		}
	}

	fmt.Println(len(paths))
	for _, p := range paths {
		fmt.Println(p.y1+1, p.x1+1, p.y2+1, p.x2+1)
	}
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
