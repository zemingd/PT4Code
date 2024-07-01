package main

import (
	"fmt"
)

func main() {
	var i1 string
	var i int
	var cnt int
	fmt.Scan(&i1)

	for i = 0; i < len(i1)-1; i++ {
		s := string(i1[i])
		ns := string(i1[i+1])
		if s == ns {
			if ns == "0" {
				i1 = replaceAtIndex(i1, '1', i+1)
				cnt++
			}
			if ns == "1" {
				i1= replaceAtIndex(i1, '0', i+1)
				cnt++
			}
		}
	}
	fmt.Print(cnt)
}

func replaceAtIndex(str string, replacement rune, index int) string {
	return str[:index] + string(replacement) + str[index+1:]
}