package main

import (
	"bufio"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	params := strings.Split(scanner.Text(), " ")
	paramA, _ := strconv.ParseInt(params[0], 10, 64)
	paramB, _ := strconv.ParseInt(params[1], 10, 64)
	paramC, _ := strconv.ParseInt(params[2], 10, 64)
	paramK, _ := strconv.ParseInt(params[3], 10, 64)
	result := math.Min(float64(paramA), float64(paramK))
	paramK -= paramA
	paramK -= paramB
	if paramK > 0 {
		result -= math.Min(float64(paramC), float64(paramK))
	}
	print(int64(result))
}
