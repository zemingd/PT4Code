package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func ini() {
	var buf = make([]byte, 10000)
	sc.Buffer(buf, 100000*8)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	ini()
	line1 := nextLine()
	NK := strings.Split(line1, " ")
	N, _ := strconv.Atoi(NK[0])
	K, _ := strconv.Atoi(NK[1])
	S := nextLine()
	l := make([]int, 0)
	if string(S[0]) == "0" {
		l = append(l, 0)
	}
	for i := 0; i < N; i++ {
		j := i
		for j < N && S[j] == S[i] {
			j++
		}
		l = append(l, j-i)
		i = j
	}
	if string(S[N-1]) == "0" {
		l = append(l, 0)
	}

	sums := make([]int, len(l)+1)
	for i := 0; i < len(l); i++ {
		sums[i+1] = sums[i] + l[i]
	}

	ans := 0
	for left := 0; left < len(sums); left += 2 {
		right := left + 2*K + 1
		if right >= len(sums) {
			right = len(sums) - 1
		}
		ans = max(ans, sums[right]-sums[left])
	}
	fmt.Println(ans)
}