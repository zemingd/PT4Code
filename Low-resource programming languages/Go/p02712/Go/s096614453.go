package main

import (
	"bufio"
	"fmt"
	"os"
)

var help = map[int]int{
	0:  0,
	1:  1,
	2:  3,
	3:  3,
	4:  7,
	5:  7,
	6:  7,
	7:  14,
	8:  22,
	9:  22,
	10: 22,
	11: 33,
	12: 33,
	13: 46,
	14: 60,
}

func main() {
	read := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	var n int
	fmt.Fscan(read, &n)
	r, d := n/15, n%15

	main := 60 * r * r
	sub := 0
	subarray := make([]int, 15)
	subarray[1] = 15*r + 1
	subarray[2] = 15*r + 2
	subarray[4] = 15*r + 4
	subarray[7] = 15*r + 7
	subarray[8] = 15*r + 8
	subarray[11] = 15*r + 11
	subarray[13] = 15*r + 13
	subarray[14] = 15*r + 14
	for i := 0; i <= d; i++ {
		sub += subarray[i]
	}
	fmt.Fprintln(w, main+sub)
}
