package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdInScanner = bufio.NewScanner(os.Stdin)

func nextInt() int {
	stdInScanner.Scan()
	i, _ := strconv.Atoi(stdInScanner.Text())
	return i
}

func nextString() string {
	stdInScanner.Scan()
	return stdInScanner.Text()
}

func main() {
	stdInScanner.Split(bufio.ScanWords)

	N := nextInt()
	K := nextInt()
	price := make([]int, N)

	min := 1001
	var index int
	for i := 0; i < N; i++ {
		price[i] = nextInt()
		if price[i] < min {
			min = price[i]
			index = i
		}
	}
	answer := min
	limit := min
	price[index] = 0
	min = 1001

	if K > 1 {
		for i := 0; i < K-1; i++ {
			for j := 0; j < N; j++ {
				if price[j] >= limit && price[j] < min {
					min = price[j]
					index = j
				}
			}
			price[index] = 0
			answer += min
			limit = min
			min = 1001
		}
	}
	fmt.Println(answer)
}
