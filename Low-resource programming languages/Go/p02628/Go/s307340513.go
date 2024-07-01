package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"sort"
	"strconv"
)

func main() {
	n := readInt()
	k := readInt()
	p := readIntSlice(n)

	sort.Slice(p, func(i, j int) bool { return p[i] < p[j] })

	answer := 0
	for i := 0; i < k; i++ {
		answer += p[i]
	}

	fmt.Println(answer)

}

var (
	scanner *bufio.Scanner
)

func init() {
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
}

func readInt() int {
	var t string

	if scanner.Scan() {
		t = scanner.Text()
	}

	n, err := strconv.Atoi(t)
	if err != nil {
		log.Fatal(err)
	}

	return n

}

func readIntSlice(n int) []int {
	s := make([]int, n)
	var t string

	for i := 0; i < int(n); i++ {
		if scanner.Scan() {
			t = scanner.Text()
		}

		num, err := strconv.Atoi(t)
		if err != nil {
			log.Fatal(err)
		}
		s[i] = num
	}

	return s
}
