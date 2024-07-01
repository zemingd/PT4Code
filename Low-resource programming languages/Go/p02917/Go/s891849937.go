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

func min(n1, n2 int) int {
	if n1 < n2 {
		return n1
	} else {
		return n2
	}
}

func main() {
	_ = nextLine()
	b := nextIntLine()
	var score int
	for i, v := range b {
		switch i {
		case 0:
			score += v * 2
		default:
			if i < (len(b) - 1) {
				score += min(v, b[i+1])
			} else {
				score += v
			}
		}
	}
	fmt.Println(score)
}
