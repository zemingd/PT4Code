package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var line string
	fmt.Scan(&line)
	x := math.MaxInt32
	for i := 0; i < len(line) - 2; i++ {
		tmp := line[i:i + 3]
		tmpInt, _ := strconv.Atoi(tmp)
		if abs(753 - tmpInt) < x {
			x = abs(753 - tmpInt)
		}
	}
	fmt.Println(x)
}

func abs(x int) int {
	return int(math.Abs(float64(x)))
}