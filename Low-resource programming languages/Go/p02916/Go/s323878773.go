package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextIntLine() []int {
	sc.Scan()
	splitStr := strings.Fields(sc.Text())
	ints := make([]int, len(splitStr))
	for i := 0; i < len(splitStr); i++ {
		n, _ := strconv.Atoi(splitStr[i])
		ints[i] = n
	}
	return ints
}

type satis struct {
	idx      int
	manzokuB int
	manzokuC int
	preEaten int
}

func main() {
	_, _ = strconv.Atoi(nextLine())
	a := nextIntLine()
	b := nextIntLine()
	c := nextIntLine()
	var score int
	preEaten := -1
	for _, v := range a {
		score += b[v-1]
		if preEaten == v-1 {
			score += c[v-2]
		}
		preEaten = v
	}
	fmt.Println(score)
}
