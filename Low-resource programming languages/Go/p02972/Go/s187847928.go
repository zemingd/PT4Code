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

	size := scanInt(sc)

	wants := make([]int, size+1)
	for i := 1; i <= size; i++ {
		wants[i] = scanInt(sc)
	}

	boxes := make([]int, size+1)
	for i := size; i > size/2; i-- {
		boxes[i] = wants[i]
	}

	for i := size / 2; i >= 1; i-- {
		max := i * (size / i)
		sum := 0
		for m := max; m > i; m -= i {
			// bit = (bit + boxes[m]) % 2
			sum += boxes[m]
		}

		parity := sum % 2
		if parity == wants[i] {
			boxes[i] = 0
		} else {
			boxes[i] = 1
		}
	}

	balls := make([]int, 0)
	for i, box := range boxes {
		if box == 1 {
			balls = append(balls, i)
		}
	}

	w := bufio.NewWriter(os.Stdout)
	fmt.Fprintln(w, len(balls))
	for _, idx := range balls {
		fmt.Fprintln(w, idx)
	}
	w.Flush()
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
