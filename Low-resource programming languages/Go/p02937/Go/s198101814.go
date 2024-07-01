package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)

	ss := []rune(s)
	st := []rune(t)

	preInd := -1
	cnt := 0

	indMap := make(map[string][]int)

	for _, v := range st {
		val := string(v)

		if _, ok := indMap[val]; ok {
			continue
		}

		check := false
		for ind, sv := range ss {
			sval := string(sv)
			if val != sval {
				continue
			}

			if _, ok := indMap[val]; !ok {
				indMap[val] = make([]int, 0)
			}

			indMap[val] = append(indMap[val], ind)
			check = true
		}
		if !check {
			fmt.Println(-1)
			return
		}
	}

	for _, v := range st {
		val := string(v)

		inds := indMap[val]
		find := false
		for _, ind := range inds {
			if preInd > ind {
				continue
			}
			preInd = ind
			find = true
			break
		}
		if !find {
			for _, ind := range inds {
				cnt++
				preInd = ind
				find = true
				break
			}
		}
	}


	total := len(s)*cnt + preInd + 1
	fmt.Println(total)
}
