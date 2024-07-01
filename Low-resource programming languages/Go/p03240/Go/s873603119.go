package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func abs(n int) int {
	if n < 0 {
		n = -n
	}
	return n
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()

	X := make([]int, n)
	Y := make([]int, n)
	H := make([]int, n)

	for i := 0; i < n; i++ {
		X[i] = nextInt()
		Y[i] = nextInt()
		H[i] = nextInt()
	}

	for x := 0; x <= 100; x++ {
		for y := 0; y <= 100; y++ {
			var h int
			max := 1000 * 1000 * 1000 * 2
			var invalid bool
			for i := 0; i < n; i++ {
				if h == 0 {
					if H[i] == 0 {
						sum := abs(x-X[i]) + abs(y-Y[i])
						if sum < max {
							max = sum
						}
					} else {
						h = abs(x-X[i]) + abs(y-Y[i]) + H[i]
						if h > max {
							invalid = true
							break
						}
					}
				} else {
					if H[i] == 0 {
						if h-(abs(x-X[i])+abs(y-Y[i])) > 0 {
							invalid = true
							break
						}
					} else {
						if H[i] != h-(abs(x-X[i])+abs(y-Y[i])) {
							invalid = true
							break
						}
					}
				}
			}

			if invalid {
				continue
			}
			if h == 0 {
				h = 1
			}
			fmt.Printf("%v %v %v\n", x, y, h)
			return
		}
	}
}
