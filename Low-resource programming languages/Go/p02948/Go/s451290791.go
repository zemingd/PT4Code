package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	M, _ := strconv.Atoi(sc.Text())

	works := make(map[int][]int)
	for i := 0; i < N; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())

		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())

		if _, ok := works[a]; !ok {
			works[a] = make([]int, 0)
		}
		works[a] = append(works[a], b)
	}

	compares := make([]int, 0)
	result := 0
	for i := 1; i < M+1; i++ {
		if _, ok := works[i]; ok {
			compares = append(compares, works[i]...)
		}

		sort.Ints(compares)
		if len(compares) > 0 {
			result += compares[len(compares)-1]
			compares = compares[:len(compares)-1]
		}
	}
	fmt.Println(result)
}
