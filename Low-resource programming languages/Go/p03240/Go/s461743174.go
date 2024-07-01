package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n := nextInt()

	xl := make([]int, n, n)
	yl := make([]int, n, n)
	hl := make([]int, n, n)
	for i := 0; i < n; i++ {
		xl[i] = nextInt()
		yl[i] = nextInt()
		hl[i] = nextInt()
	}

	max := 100
	for x := 0; x <= max; x++ {
		for y := 0; y <= max; y++ {
			needH := -1

			for i := 0; i < n; i++ {
				if hl[i] > 0 {
					dist := hl[i] + abs(x-xl[i]) + abs(y-yl[i])
					if needH == -1 {
						needH = dist
					} else {
						if dist != needH {
							needH = -2
							break
						}
					}
				}
			}

			if needH == -2 {
				continue
			}

			for i := 0; i < n; i++ {
				if hl[i] == 0 {
					dist := abs(x-xl[i]) + abs(y-yl[i])
					if dist > needH {
						needH = -2
						break
					}
				}
			}

			if needH == -2 {
				continue
			}

			fmt.Printf("%v %v %v\n", x, y, needH)
			return
		}
	}
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
