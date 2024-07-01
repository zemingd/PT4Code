package main

import (
	"bufio"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	as := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		as[i] = a
	}

	max := 0
	maxIndex := 0
	for i, a := range as {
		if a > max {
			max = a
			maxIndex = i
		}
	}

	secondMax := 0
	for i, a := range as {
		if i == maxIndex {
			continue
		}

		if a > secondMax {
			secondMax = a
		}
	}

	writer := bufio.NewWriter(os.Stdout)
	for i := 0; i < n; i++ {
		if i == maxIndex {
			writer.WriteString(strconv.Itoa(secondMax) + "\n")
		} else {
			writer.WriteString(strconv.Itoa(max) + "\n")
		}
	}
	writer.Flush()
}
