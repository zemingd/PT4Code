package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	scanner.Split(bufio.ScanWords)
	s := scanText()
	q := scanInt()

	isReverse := false
	head, tail := "", ""
	for i := 0; i < q; i++ {

		if scanInt() == 1 {
			isReverse = !isReverse
			continue
		}

		if f := scanInt(); (f == 1 && !isReverse) || (f == 2 && isReverse) {
			head += scanText()
		} else {
			tail += scanText()
		}
	}

	ans := reverse(head) + s + tail

	if isReverse {
		fmt.Print(reverse(ans))
	} else {
		fmt.Print(ans)
	}
}

func reverse(s string) string {
	t := []byte(s)
	for i, j := 0, (len(s) - 1); i < j; i, j = i+1, j-1 {
		t[i], t[j] = t[j], t[i]
	}
	return string(t)
}

func scanInt() int {
	i, _ := strconv.Atoi(scanText())
	return i
}

func scanInts(size int) []int {
	ints := make([]int, size)
	for i := 0; i < size; i++ {
		ints[i] = scanInt()
	}
	return ints
}

func scanText() string {
	scanner.Scan()
	return scanner.Text()
}

func abs(n int) int {
	return int(math.Abs(float64(n)))
}

func pow(x, y int) int {
	return int(math.Pow(float64(x), float64(y)))
}
