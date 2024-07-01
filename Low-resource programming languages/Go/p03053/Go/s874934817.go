package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func asInt(s string) []int {
	arr := strings.Split(s, " ")
	is := make([]int, 0, len(arr))
	for _, str := range arr {
		i, _ := strconv.Atoi(str)
		is = append(is, i)
	}
	return is
}

func main() {
	hw := asInt(nextLine())
	h := hw[0]
	w := hw[1]
	table := make([][]bool, h, h)
	copyTable := make([][]bool, h, h)
	sharpNum := 0
	totalSharp := h * w
	for i := 0; i < h; i++ {
		table[i] = make([]bool, w, w)
		copyTable[i] = make([]bool, w, w)
		line := strings.Split(nextLine(), "")
		for j := 0; j < w; j++ {
			if line[j] == "#" {
				table[i][j] = true
				copyTable[i][j] = true
				sharpNum++
			}
		}
	}

	opeNum := 0
	for {
		if sharpNum == totalSharp {
			break
		}
		operationed := false
		for i, line := range table {
			for j, isSharp := range line {
				if !isSharp && ((j != 0 && table[i][j-1]) || (j != w-1 && table[i][j+1]) || (i != 0 && table[i-1][j]) || (i != h-1 && table[i+1][j])) {
					copyTable[i][j] = true
					sharpNum++
					operationed = true
				}
				if sharpNum == totalSharp {
					break
				}
			}
			if sharpNum == totalSharp {
				break
			}
		}
		if operationed {
			opeNum++
		}
		table = cp(table, copyTable)
	}
	fmt.Println(opeNum)
}

func cp(dist, src [][]bool) [][]bool {
	for i := range dist {
		dist[i] = make([]bool, len(src[i]), len(src[i]))
		for j := range src[i] {
			dist[i][j] = src[i][j]
		}
	}
	return dist
}
