package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	// 標準入力をソースにしたスキャナの生成
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()
	var N, _ = strconv.Atoi(scanner.Text())

	for N > 0 {
		N = N - 1000
	}

	fmt.Println(math.Abs(float64(N)))
}