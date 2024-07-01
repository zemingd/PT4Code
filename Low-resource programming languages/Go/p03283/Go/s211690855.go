package main

import (
	"bufio"
	"bytes"
	"fmt"
	"os"
	"strconv"
)

type Range struct {
	L, R int
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var N, M, Q int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d %d", &N, &M, &Q)

	mp := make(map[Range]int)
	for i := 0; i < M; i++ {
		var L, R int
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d %d", &L, &R)
		mp[Range{L, R}]++
	}

	ranges := make([]Range, Q)
	for i := 0; i < Q; i++ {
		var p, q int
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d %d", &p, &q)
		ranges[i] = Range{p, q}
	}

	anss := make([]int, Q)
	for index, r := range ranges {
		ans := 0
		for i := r.L; i <= r.R; i++ {
			for j := i; j <= r.R; j++ {
				ans = ans + mp[Range{i, j}]
			}
		}
		anss[index] = ans
	}

	var buffer bytes.Buffer

	for _, a := range anss {
		buffer.WriteString(strconv.Itoa(a))
		buffer.WriteString("\n")
	}
	fmt.Println(buffer.String())
}
