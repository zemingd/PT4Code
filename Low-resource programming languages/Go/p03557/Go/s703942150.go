package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var (
	A       []int
	B       []int
	C       []int
	count   = 0
	scanner = bufio.NewScanner(os.Stdin)
)

func main() {
	scanner.Scan()
	input(&A)
	input(&B)
	input(&C)

	for _, v := range A {
		i := search(B, v)
		for i := i; i < len(B); i++ {
			i := search(C, B[i])
			for i := i; i < len(C); i++ {
				count++
			}
		}
	}

	fmt.Println(count)
}

func search(a []int, n int) int {
	return sort.Search(len(a), func(i int) bool {
		return a[i] > n
	})
}

func input(to *[]int) {
	scanner.Scan()
	s := scanner.Text()

	split := strings.Split(s, " ")
	for _, v := range split {
		i, _ := strconv.Atoi(v)
		*to = append(*to, i)
	}
	sort.Ints(*to)
}
