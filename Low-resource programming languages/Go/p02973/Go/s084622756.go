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
		if len(result) == 0 || result[len(result)-1] >= el {
			result = append(result, el)
		} else {
			left := 0
			right := len(result) - 1
			current := len(result) / 2
			for left < right {
				if result[current-1] >= el && el > result[current] {
					break
				}

				if result[current-1] < el {
					current = (left + current) / 2
					right = current - 1
				} else if el <= result[current] {
					current = (current + right) / 2
					left = current + 1
				}
			}

			result[current] = el
		}
	}

	fmt.Println(len(result))
}
