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
		smallestBigIndex := searchSmallestBigIndex(el, result)

		if smallestBigIndex == -1 {
			result = append(result, el)
		} else {
			result[smallestBigIndex] = el
		}
	}

	fmt.Println(len(result))
}

func searchSmallestBigIndex(target int, array []int) int {
	if len(array) == 0 {
		return -1
	} else if array[0] < target {
		return 0
	} else if array[len(array)-1] >= target {
		return -1
	}

	left := 1
	right := len(array) - 1
	current := len(array) / 2
	for !(array[current-1] >= target && target > array[current]) {
		if array[current-1] < target {
			current = (left + current) / 2
			right = current - 1
		} else if target <= array[current] {
			current = (current + right) / 2
			left = current + 1
		}
	}

	return current
}
