package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	n := scanInt(sc)

	ns := make(map[int]int, n)
	flip := []int{-1, 1}
	total := 0

	for i := 0; i < n; i++ {
		a := scanInt(sc) - 1
		ns[a] = (ns[a] + 1) % 2
		total += flip[ns[a]]
	}

	fmt.Println(total)
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}