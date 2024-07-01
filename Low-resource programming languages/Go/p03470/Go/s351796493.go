package main

import (
	"bufio"
	"fmt"
	"os"
)

var debug = false

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var m, n int
	fmt.Scanf("%d", &n)
	targets := []int{}
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &m)
		targets = append(targets, m)
	}

	res := GetAnswer(n, targets)
	fmt.Printf("%v\n", res)
}

// GetAnswer ...
func GetAnswer(n int, inputs []int) int {
	prt("inputs: n:%d inputs%v", n, inputs)
	mochis := sortAsc(inputs)
	result := 1
	for i := range mochis {
		if i == len(mochis)-1 {
			break
		}
		if mochis[i] != mochis[i+1] {
			result++
		}
	}
	prt("%v\n", result)
	return result
}

func sortAsc(inputs []int) []int {
	prt("bubble sort start: inputs%v", inputs)
	for i := 0; i < len(inputs)-1; i++ {
		for j := len(inputs) - 1; j > i; j-- {
			if inputs[i] < inputs[j] {
				tmp := inputs[i]
				inputs[i] = inputs[j]
				inputs[j] = tmp
				prt("sorting: i=%d, j=%d, %v", i, j, inputs)
			}
		}
	}
	return inputs
}

func prt(format string, inputs ...interface{}) {
	if debug {
		fmt.Printf(format+"\n", inputs...)
	}
}