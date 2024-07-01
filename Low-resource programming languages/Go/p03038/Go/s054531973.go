package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type BC [][]int

func (b BC) Len() int {
	return len(b)
}

func (b BC) Less(i, j int) bool {
	return b[i][1] > b[j][1]
}

func (b BC) Swap(i, j int) {
	b[i], b[j] = b[j], b[i]
}

func main() {
	var n, m int
	fmt.Scan(&n)
	fmt.Scan(&m)

	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		scanner.Scan()
		a[i], _ = strconv.Atoi(scanner.Text())
	}
	sort.Ints(a)

	bc := make(BC, m)
	for i := 0; i < m; i++ {
		scanner.Scan()
		b, _ := strconv.Atoi(scanner.Text())
		scanner.Scan()
		c, _ := strconv.Atoi(scanner.Text())
		bc[i] = []int{b, c}
	}
	sort.Sort(bc)

	var j int
	for i := 0; i < m; i++ {
		b := bc[i][0]
		c := bc[i][1]

		for k := 0; k < b; k++ {
			if c > a[j+k] {
				a[j+k] = c
			} else {
				var sum int64
				for _, v := range a {
					sum += int64(v)
				}
				fmt.Println(sum)
				return
			}
		}
		j = j + b
	}

	var sum int64
	for _, v := range a {
		sum += int64(v)
	}
	fmt.Println(sum)
}
