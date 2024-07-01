package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var x int
	card := make([]string, 9)
	for i := range card {
		fmt.Scan(&x)
		card[i] = strconv.Itoa(x)
	}

	var n int
	fmt.Scan(&n)
	arr := make([]string, n)
	for i := range arr {
		fmt.Scan(&x)
		arr[i] = strconv.Itoa(x)
	}

	line := [][]int{{0, 1, 2}, {3, 4, 5}, {6, 7, 8}, {0, 3, 6}, {1, 4, 7}, {2, 5, 8}, {0, 4, 8}, {2, 4, 6}}

	chk := make([]int, 9)
	for i, v := range chk {
		for _, v2 := range arr {
			v = strings.Index(card[i], v2)
			if v != -1 {
				// カードの数値と玉の数値が一致したら、chkに1でマークする
				chk[i] = 1
				break
			}
		}
	}

	result := false
	for i, _ := range line {
		if chk[line[i][0]] == 1 && chk[line[i][1]] == 1 && chk[line[i][2]] == 1 {
			result = true
			break
		}
	}

	if result == true {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
