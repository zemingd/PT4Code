package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Range struct {
	start int
	end   int
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	_ = scanInt(sc)
	nTrains := scanInt(sc)
	nQuestions := scanInt(sc)

	trains := make([]Range, nTrains)
	for i := 0; i < nTrains; i++ {
		start := scanInt(sc)
		end := scanInt(sc)
		trains[i] = Range{start, end}
	}

	out := bufio.NewWriter(os.Stdout)
	for i := 0; i < nQuestions; i++ {
		start := scanInt(sc)
		end := scanInt(sc)
		cnt := 0
		for _, train := range trains {
			if start <= train.start && train.end <= end {
				cnt += 1
			}
		}
		fmt.Fprintln(out, cnt)
	}

	out.Flush()
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
