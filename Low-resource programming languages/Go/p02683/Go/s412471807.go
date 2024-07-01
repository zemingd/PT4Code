package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var (
	sc = bufio.NewScanner(os.Stdin)

/*	sc = bufio.NewScanner(strings.NewReader(
		`8 5 22
100 3 7 5 3 1
164 4 5 2 7 8
334 7 2 7 2 9
234 4 7 2 8 2
541 5 4 3 3 6
235 4 8 6 9 7
394 3 6 1 6 2
872 8 4 3 7 2`))*/

	n int
	m int
	x int
)

func main() {
	intArray := readIntArray()
	n, m, x = intArray[0], intArray[1], intArray[2]

	books := make([][]int, n)
	for i := range books {
		books[i] = readIntArray()
	}

	combination := make([]int, 1<<n)
	for i := range combination {
		combination[i] = i
	}

	minPrice := math.MaxInt32
	for _, comb := range combination {
		price := 0

		understanding := make([]int, m)
		for mask := 0; mask < n; mask++ {
			if (comb>>mask)&1 == 1 {
				price += books[mask][0]

				for i := range understanding {
					understanding[i] += books[mask][i+1]
				}
			}
		}

		minUnderstanding := math.MaxInt32
		for _, n := range understanding {
			if minUnderstanding > n {
				minUnderstanding = n
			}
		}

		if minUnderstanding >= x && minPrice > price {
			minPrice = price
		}
	}

	if minPrice == math.MaxInt32 {
		fmt.Println(-1)
		return
	}

	fmt.Println(minPrice)
}

func readLine() string {
	if sc.Scan() {
		return sc.Text()
	}
	return "error"
}

func readStringArray() []string {
	return strings.Split(readLine(), " ")
}

func readIntArray() []int {
	a := readStringArray()
	ints := make([]int, len(a))
	for i, s := range a {
		n, err := strconv.Atoi(s)
		if err != nil {
			panic(err)
		}
		ints[i] = n
	}
	return ints
}

func readInt() int {
	n, err := strconv.Atoi(readLine())
	if err != nil {
		panic(err)
	}
	return n
}
