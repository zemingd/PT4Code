package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	n, _ := strconv.Atoi(readString())
	return n
}

func readInts() (int, int) {
	input := strings.Split(readString(), " ")
	n, _ := strconv.Atoi(input[0])
	k, _ := strconv.Atoi(input[1])

	return n, k
}

func main() {
	n, k := readInts()
	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = readInt()
	}
	sort.Sort(sort.IntSlice(h))

	min := h[k-1] - h[0]
	for i := 1; i < n-k+1; i++ {
		diff := h[i+k-1] - h[i]
		if diff == 0 {
			min = 0
			break
		} else if diff < min {
			min = diff
		}
	}
	fmt.Println(min)
}