package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func NewLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func upTemp(lowTemp int, height int) float64 {
	return float64(lowTemp) - float64(height)*0.006
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	line := NewLine(sc)
	line = NewLine(sc)
	words := strings.Fields(line)
	lowTemp, _ := strconv.Atoi(words[0])
	idealTemp, _ := strconv.Atoi(words[1])
	line = NewLine(sc)
	choices := strings.Fields(line)

	var ans int
	var ansDiff float64 = 1000000000

	for i, choiceStr := range choices {
		choice, _ := strconv.Atoi(choiceStr)
		temp := upTemp(lowTemp, choice)
		diff := float64(idealTemp) - temp

		if diff < ansDiff {
			ans = i + 1
			ansDiff = diff
		}
	}
	fmt.Printf("%d\n", ans)
}