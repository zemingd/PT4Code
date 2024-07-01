package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	var inputs []string
	for i := 0; i <= 0; i++ {
		sc.Scan()
		inputs = strings.Split(sc.Text(), " ")
	}
	a, _ := strconv.Atoi(inputs[0])
	b, _ := strconv.Atoi(inputs[1])
	c, _ := strconv.Atoi(inputs[2])
	howTime, _ := strconv.Atoi(inputs[3])

	sum := 0
	countA := count(howTime, a)
	howTime -= countA
	sum += countA * 1
	if howTime > 0 {
		countB := count(howTime, b)
		howTime -= countB
		if howTime > 0 {
			countC := count(howTime, c)
			sum += countC * -1
		}
	}
	fmt.Println(sum)
}

// 実行数を回数をカウント
func count(howTime, abc int) int {
	if howTime-abc > 0 {
		return abc
	}
	return howTime
}