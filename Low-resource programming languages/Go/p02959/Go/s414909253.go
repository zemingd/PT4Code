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

	nHeroes := scanInt(sc)
	cities := make([]int, nHeroes+1)
	for i := 0; i < nHeroes+1; i++ {
		cities[i] = scanInt(sc)
	}

	heroes := make([]int, nHeroes)
	for i := 0; i < nHeroes; i++ {
		heroes[i] = scanInt(sc)
	}

	nTotal := 0
	for i, killable := range heroes {
		left, right := cities[i], cities[i+1]
		leftKills := min(left, killable)
		rightKills := min(right, killable-leftKills)
		right -= rightKills
		nTotal += leftKills + rightKills
	}

	fmt.Println(nTotal)
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
