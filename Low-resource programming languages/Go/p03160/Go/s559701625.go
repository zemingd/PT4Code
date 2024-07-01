package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var INF = math.Inf(1)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	text := sc.Text()
	text = strings.TrimRight(text, "\n")
	return text
}

func chmin(a int, b int) int {
	if a > b {
		return a
	}
	return b
}

func dp(costs []int) []int {
	var table []int
	table = append(table, 0)
	for i := 1; i < len(costs); i++ {
		val1 := float64(table[i-1]) + math.Abs(float64(costs[i-1]-costs[i]))
		var val2 float64
		if len(table) >= 2 {
			val2 = float64(table[i-2]) + math.Abs(float64(costs[i-2]-costs[i]))
		} else {
			val2 = INF
		}
		min := int(math.Min(val1, val2))
		table = append(table, min)
	}
	return table
}

func main() {
	nextLine()
	var costs []int
	costString := strings.Split(nextLine(), " ")
	for i := 0; i < len(costString); i++ {
		cost, _ := strconv.Atoi(costString[i])
		costs = append(costs, cost)
	}
	dpTable := dp(costs)
	fmt.Print(dpTable[len(dpTable)-1])
}
