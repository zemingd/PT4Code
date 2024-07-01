package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}

	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func check() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	capacity := make([]int, 0, 5)

	n := scanInt(sc)

	min := scanInt(sc)
	capacity = append(capacity, min)

	for i := 0; i < 5-1; i++ {
		v := scanInt(sc)
		if v < min {
			min = v
		}
		capacity = append(capacity, v)
	}

	minCount := n / min
	if n%min != 0 {
		minCount++
	}

	fmt.Printf("%d\n", minCount+4)

}

func main() {
	check()
}
