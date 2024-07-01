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
			right := len(result)
			res := 0
			for left < right {
				current := (left + right) / 2
				if result[current] < el {
					right = current
				} else {
					left = current + 1
				}
			}

			result[res] = el
		}
	}

	fmt.Println(len(result))
}
