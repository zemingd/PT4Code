package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)
	t := float64(scanInt(sc))
	a := float64(scanInt(sc))

	idx := -1
	diff := math.MaxFloat64
	for i := 0; i < n; i++ {
		h := scanInt(sc)
		b := t - float64(h)*0.006
		if math.Abs(a-b) < diff {
			idx = i
			diff = math.Abs(a - b)
		}
	}

	fmt.Println(idx + 1)
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
