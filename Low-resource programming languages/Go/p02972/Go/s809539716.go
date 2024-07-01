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
		bit := 0
		for a := i; a <= max; a += a {
			bit = (bit + boxes[a]) % 2
		}
		boxes[i] = (bit + wants[i]) % 2
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
