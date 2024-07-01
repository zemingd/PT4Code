package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	lines, _ := scanLongIntSlices(1, 11*200000)
	as := lines[0]
	sort.Sort(sort.Reverse(sort.IntSlice(as)))

	edge := make([]int, 10000001)
	tmpMax := as[0]
	edge[tmpMax] = 1

	score := 0
	for i := 1; i < n; i++ {
		for edge[tmpMax] <= 0 {
			tmpMax--
		}
		if edge[tmpMax] > 0 {
			score += tmpMax
			edge[tmpMax]--
			edge[as[i]] += 2
		}
	}

	fmt.Printf("%d\n", score)
}

func scanLongIntSlices(lines int, maxBufSize int) ([][]int, error) {

	res := [][]int{}

	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, bufio.MaxScanTokenSize)
	sc.Buffer(buf, maxBufSize)

	for sc.Scan() {
		line := sc.Text()
		strs := strings.Split(line, " ")
		ints := make([]int, len(strs))
		for i, c := range strs {
			n, err := strconv.Atoi(c)
			if err != nil {
				return nil, err
			}
			ints[i] = n
		}
		res = append(res, ints)
	}

	if err := sc.Err(); err != nil {
		return nil, err
	}

	return res, nil
}
