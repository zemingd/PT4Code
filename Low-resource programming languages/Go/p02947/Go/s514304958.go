package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var N int
	fmt.Scan(&N)

	words := scanStrings(N)

	var counter int
	// for i := 0; i < len(words); i++ {
	// 	baseWord := words[i]
	// 	for j := i + 1; j < len(words); j++ {
	// 		if baseWord == words[j] {
	// 			counter++
	// 		}
	// 	}
	// }
	for i, w := range words {
		dup := 0
		for j := 0; j < i; j++ {

			if w == words[j] {
				dup++
			}
			if j+1 == i {
				counter += dup
			}
		}
	}

	fmt.Println(counter)
}

func scanStrings(len int) (strings []string) {
	var str string
	for i := 0; i < len; i++ {
		fmt.Scanf("%s", &str)
		strings = append(strings, sortString(str))
	}
	return
}

func sortString(word string) string {
	chars := []string{}
	for _, c := range word {
		chars = append(chars, string(c))
	}
	sort.Sort(sort.StringSlice(chars))
	return strings.Join(chars, "")
}
