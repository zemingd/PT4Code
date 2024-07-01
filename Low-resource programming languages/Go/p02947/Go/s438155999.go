package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	charMaps := make([]map[string]int, n)
	for i := 0; i < n; i++ {
		var str string
		fmt.Scan(&str)
		charMap := map[string]int{}
		for j := 0; j < len(str); j++ {
			charMap[str[j:j+1]]++
		}
		charMaps[i] = charMap
	}

	count := 0
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			equal := true
			for key, _ := range charMaps[i] {
				if charMaps[j][key] <= 0 {
					equal = false
					break
				}
			}
			if equal {
				count++
			}
		}
	}
	fmt.Println(count)
}
