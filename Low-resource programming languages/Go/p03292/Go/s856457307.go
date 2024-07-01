package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func abs(a int) int {
	if a < 0 {
		return -a
	} else {
		return a
	}
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func main() {
	r := bufio.NewReader(os.Stdin)
	s, _ := r.ReadString('\n')
	s = strings.TrimRight(s, " \t\n")
	slice := strings.Split(s, " ")
	a1 := string(slice[0])
	a2 := string(slice[1])
	a3 := string(slice[2])
	A1, _ := strconv.Atoi(a1)
	A2, _ := strconv.Atoi(a2)
	A3, _ := strconv.Atoi(a3)

	a1a2a3 := abs(A2-A1) + abs(A3-A2)
	a1a3a2 := abs(A3-A1) + abs(A2-A3)
	a2a1a3 := abs(A1-A2) + abs(A3-A1)
	a2a3a1 := abs(A3-A2) + abs(A1-A3)
	a3a1a2 := abs(A1-A3) + abs(A2-A1)
	a3a2a1 := abs(A2-A3) + abs(A1-A2)

	answer := math.MaxInt64
	answer = min(a1a2a3, a1a3a2)
	answer = min(answer, a2a1a3)
	answer = min(answer, a2a3a1)
	answer = min(answer, a3a1a2)
	answer = min(answer, a3a2a1)

	fmt.Println(answer)
}
