package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	// ここからロジック
	n, _ := strconv.Atoi(s)
	arr := make([]int, 0, n)
	for i := 0; i < n; i++ {
		if sc.Scan() {
			s = sc.Text()
		}
		_n, _ := strconv.Atoi(s)
		arr = append(arr, _n)
	}

	usedIndexMap := make(map[int]struct{})
	colors := 0
	for i:= 0; i < n; i++ {
		if len(usedIndexMap) == n {
			break
		}
		var currentValue int
		for j := i; j < len(arr); j++ {
			if _, used := usedIndexMap[j]; !used {
				v := arr[j]
				if currentValue < v {
					currentValue = v
					usedIndexMap[j] = struct{}{}
				}
			}

		}
		colors += 1
	}
	fmt.Println(colors)
}
