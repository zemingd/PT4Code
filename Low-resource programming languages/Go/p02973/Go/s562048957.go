package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	arr := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		arr[i], _ = strconv.Atoi(sc.Text())
	}

	result := make([]int, 0)
	for _, el := range arr {
		smallestBigIndex := -1
		for i, res := range result {
			if res < el {
				smallestBigIndex = i
				break
			}
		}

		if smallestBigIndex == -1 {
			result = append(result, el)
		} else {
			result[smallestBigIndex] = el
		}
	}

	fmt.Println(len(result))
}
