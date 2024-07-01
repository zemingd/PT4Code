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
	sc.Scan()
	input := sc.Text()
	inputs := strings.Split(input, " ")
	a, _ := strconv.Atoi(inputs[0])
	b, _ := strconv.Atoi(inputs[1])

	result := []int{}

	result = append(result, a+b)
	result = append(result, a+a-1)
	result = append(result, b+b-1)
	max := 0
	for _, r := range result {
		if max < r {
			max = r
		}
	}
	fmt.Println(max)
}
