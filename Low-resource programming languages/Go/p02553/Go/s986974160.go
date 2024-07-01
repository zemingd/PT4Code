package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

func main() {
	fmt.Println(abc178b(os.Stdin))
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func abc178b(r io.Reader) int {
	sc := bufio.NewScanner(r)
	sc.Split(bufio.ScanWords)

	a, b, c, d := nextInt(sc), nextInt(sc), nextInt(sc), nextInt(sc)

	s := []int{a * c, a * d, b * c, b * d}
	sort.Sort(sort.Reverse(sort.IntSlice(s)))

	return s[0]
}
