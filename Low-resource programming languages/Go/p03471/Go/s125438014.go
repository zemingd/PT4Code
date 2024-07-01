package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)
var writer = bufio.NewWriter(os.Stdout)

func readLine() string {
	scanner.Scan()
	return scanner.Text()
}

func main() {
	input := strings.Split(readLine(), " ")
	n, _ := strconv.Atoi(input[0])
	y, _ := strconv.Atoi(input[1])
	z := 0
	result := map[string]int{
		"x": -1,
		"y": -1,
		"z": -1,
	}

	for i := 0; i < n; i++ {
		for j := 0; j < (n - i); j++ {
			z = n - i - j
			if (i*10000+j*5000+z*1000) == y && z >= 0 {
				result["x"] = i
				result["y"] = j
				result["z"] = z
				break
			}
		}
	}

	fmt.Fprintf(writer, "%d %d %d", result["x"], result["y"], result["z"])
	writer.Flush()
}
