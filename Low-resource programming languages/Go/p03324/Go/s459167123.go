package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func parseInput(input string) (cnt, idx float64) {
	splitedStrings := strings.Fields(input)
	cnt, _ = strconv.ParseFloat(splitedStrings[0], 64)
	idx, _ = strconv.ParseFloat(splitedStrings[1], 64)
	return
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	cnt, idx := parseInput(scanner.Text())
	if cnt == 0 {
		fmt.Println(idx)
	} else {
		fmt.Println(math.Pow(100, cnt) * idx)
	}
}
