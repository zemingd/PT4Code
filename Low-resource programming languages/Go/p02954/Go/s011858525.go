package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	slen := len(s)

	sary := strings.Split(s, "")
	cary := make([]int, slen)
	for i := 0; i < slen; i++ {
		cary[i] = 1
	}

	memo := map[string]string{}

	for i := 0; i < 1000; i++ {
		key := ""
		for m := 0; m < slen; m++ {
			key += strconv.Itoa(cary[m])
		}
		if memo[key] != "" {
			stmp := strings.Split(memo[key], "")
			for m := 0; m < slen; m++ {
				cary[m], _ = strconv.Atoi(stmp[m])
			}
			continue
		}

		ctmp := make([]int, slen)
		for j := 0; j < slen; j++ {
			if sary[j] == "R" {
				ctmp[j+1] += cary[j]
			} else if sary[j] == "L" {
				ctmp[j-1] += cary[j]
			}
		}
		cary = ctmp

		data := ""
		for m := 0; m < slen; m++ {
			data += strconv.Itoa(ctmp[m])
		}
		memo[key] = data
	}

	for i := 0; i < slen; i++ {
		fmt.Printf("%v ", cary[i])
	}
	fmt.Println()
}
