package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	input := strings.Split(scanner.Text(), " ")
	var args [4]int
	for i, str := range input {
		args[i], _ = strconv.Atoi(str)
	}
	candidates := [4]int{args[0] * args[2], args[0] * args[3], args[1] * args[2], args[1] * args[3]}
	var max float64 = float64(candidates[0])
	for _, c := range candidates {
		max = math.Max(max, float64(c))
	}
	fmt.Printf("%d", int(max))
}
