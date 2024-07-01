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
	paramA, _ := strconv.Atoi(params[0])
	paramB, _ := strconv.Atoi(params[1])
	paramC, _ := strconv.Atoi(params[2])
	paramK, _ := strconv.Atoi(params[3])
	result := math.Min(float64(paramA), float64(paramK))
	paramK -= paramA
	paramK -= paramB
	if paramK > 0 {
		result -= math.Min(float64(paramC), float64(paramK))
	}
	print(result)
}
