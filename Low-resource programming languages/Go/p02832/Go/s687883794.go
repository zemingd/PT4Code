package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	n_bricks := scanInt(sc)

	bricks := make([]int, n_bricks)
	for i := 0; i < n_bricks; i++ {
		bricks[i] = scanInt(sc)
	}

	next := 1
	n_broken := 0
	for _, brick := range bricks {
		if brick == next {
			next += 1
		} else {
			n_broken += 1
		}
	}

	if n_broken == n_bricks {
		fmt.Println(-1)
	} else {
		fmt.Println(n_broken)
	}
}
