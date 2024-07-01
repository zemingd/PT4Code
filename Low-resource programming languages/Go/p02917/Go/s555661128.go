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
	n, _ := strconv.Atoi(nextLine())
	b := nextIntLine()
	var score int
	for i := 0; i < n; i++ {
		switch i {
		case 0:
			score += b[i]
		case n - 1:
			score += b[len(b)-1]
		default:
			score += min(b[i-1], b[i])
		}
	}
	fmt.Println(score)
}
