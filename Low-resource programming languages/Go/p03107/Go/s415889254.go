package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := nextLine()
	r := []rune(s)

	dindex := make([]int, 0, 100000)
	index := 0
	find := false
	stock := '2'
	stocki := 0
	ans := 0
	for {
		if index >= len(r) {
			if find {
				for i := len(dindex) - 1; i >= 0; i-- {
					r = append(r[:dindex[i]], r[dindex[i]+1:]...)
				}
				index = 0
				find = false
				stock = '2'
				dindex = make([]int, 0, 100000)
				continue
			} else {
				break
			}
		}

		if stock == '2' {
			stock = r[index]
			stocki = index
			index++
			continue
		}

		if stock != '2' && r[index] != stock {
			dindex = append(dindex, stocki)
			dindex = append(dindex, index)
			ans += 2
			find = true
			stock = '2'
		} else {
			stock = r[index]
			stocki = index
		}
		index++
	}

	fmt.Println(ans)
}
