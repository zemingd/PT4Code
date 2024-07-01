package main

import "fmt"

func main() {
	var s string
	fmt.Scanln(&s)
	fmt.Println(find(s))
}

func find(s string) string {
	chars := make([]bool, 26)
	nFound := 0

	for _, c := range s {
		if !chars[c-'a'] {
			nFound += 1
			chars[c-'a'] = true
		}
		if nFound == 26 {
			break
		}
	}

	if nFound < 26 {
		for idx, found := range chars {
			if !found {
				return string('a' + idx)
			}
		}
	}

	return "None"
}