package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	answer := countPairs(s)
	fmt.Println(answer)
}

func countPairs(s string) int {
	if len(s) < 4 {
		return 0
	}
	count := 0
	countMap := make(map[string]int)
	for i := 0; i < len(s)-4; i++ {
		for j := i + 5; j <= len(s); j++ {
			rawStr := s[i:j]
			if countMap[rawStr] != 0 {
				count += countMap[rawStr]
			} else {
				num, _ := strconv.Atoi(rawStr)
				if num%2019 == 0 {
					count++
					countMap[rawStr] = 1
				} else {
					countMap[rawStr] = -1
				}
			}
		}
	}
	return count
}
