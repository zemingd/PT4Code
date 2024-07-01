package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInput() (int, int) {
	sc.Split(bufio.ScanWords)

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	Y, _ := strconv.Atoi(sc.Text())

	return N, Y
}

func main() {

	x, y, z := do()

	fmt.Printf("%d %d %d\n", x, y, z)
}

func do() (int, int, int) {
	N, Y := getInput()

	x := Y / 10000
	if x > N {
		return -1, -1, -1
	}

	for ; 0 <= x; x-- {
		y := (Y - 10000*x) / 5000
		if x+y > N {
			return -1, -1, -1
		}

		for ; 0 <= y; y-- {
			if 10000*x+5000*y+1000*(N-x-y) == Y {
				return x, y, N - x - y
			}
		}
	}
	return -1, -1, -1
}
