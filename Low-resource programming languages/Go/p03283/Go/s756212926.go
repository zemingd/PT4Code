package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	nCities := scanInt(sc)
	nTrains := scanInt(sc)
	nQuestions := scanInt(sc)

	cities := make([][]int, nCities)
	for i := 0; i < nTrains; i++ {
		start := scanInt(sc) - 1
		end := scanInt(sc) - 1

		if cities[start] == nil {
			cities[start] = make([]int, nCities-start)
		}
		cities[start][end-start] += 1
	}

	for _, city := range cities {
		if len(city) < 2 {
			continue
		}
		sum := city[0]
		for i := 1; i < len(city); i++ {
			sum += city[i]
			city[i] = sum
		}
	}

	out := bufio.NewWriter(os.Stdout)
	for q := 0; q < nQuestions; q++ {
		start := scanInt(sc) - 1
		end := scanInt(sc) - 1
		cnt := 0

		for i := start; i <= end; i++ {
			if cities[i] != nil {
				cnt += cities[i][end-i]
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
