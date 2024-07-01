package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	nFlowers := scanInt(sc)

	heights := make([]int, nFlowers+1)
	max := 0
	for i := 0; i < nFlowers; i++ {
		heights[i] = scanInt(sc)
		if heights[i] > max {
			max = heights[i]
		}
	}
	heights[nFlowers] = 0

	total := 0
	for min := 0; min < max; min++ {
		cnt := 0
		seq := false
		for _, h := range heights {
			if h <= min {
				if seq {
					cnt += 1
					seq = false
				}
			} else {
				seq = true
			}
		}
		total += cnt
	}

	fmt.Println(total)
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
