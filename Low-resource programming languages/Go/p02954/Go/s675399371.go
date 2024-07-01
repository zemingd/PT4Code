package main

import "fmt"

import "strings"

func main() {
	var s string
	fmt.Scan(&s)
	slen := len(s)

	sary := strings.Split(s, "")
	cary := make([]int, slen)
	for i := 0; i < slen; i++ {
		cary[i] = 1
	}

	for i := 0; i < 50; i++ {
		ctmp := make([]int, slen)
		for j := 0; j < slen; j++ {

			if sary[j] == "R" {
				ctmp[j+1] += cary[j]
			} else if sary[j] == "L" {
				ctmp[j-1] += cary[j]
			}
		}
		cary = ctmp
	}

	for i := 0; i < slen; i++ {
		fmt.Printf("%v ", cary[i])
	}
	fmt.Println()
}
