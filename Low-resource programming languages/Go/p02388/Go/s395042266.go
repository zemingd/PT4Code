package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()
	x, _ := strconv.Atoi(scanner.Text())

	fmt.Println(math.Pow(float64(x), 3))
}

