package main

import (
	"bufio"
	"os"
	"fmt"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextLineInt() []int {
	lineString := strings.Split(nextLine(), " ")
	var lineInt []int
	for i := range lineString {
		v, _ := strconv.Atoi(lineString[i])
		lineInt = append(lineInt, v)
	}
	return lineInt
}

func bool2int(b bool) int {
	if b {
		return 1
	}else {
		return 0
	}
}

func main() {
	nm := nextLineInt()

	var foods [31]bool

	for i := 0;i < 31;i++ {
		foods[i] = true
	}

	for i := 0;i < nm[0];i++ {
		var row []int
		row = nextLineInt()
		row = row[1:]
		
		var isExist [31]bool

		for j := 0;j < 31;j++ {
			isExist[j] = false
		}

		for _,v := range row {
			isExist[v] = true
		}

		for j := range isExist {
			if !(isExist[j] && foods[j]) {
				foods[j] = false
			}
		}

	}

	total := 0
	for _,v := range foods {
		total += bool2int(v)
	}

	fmt.Println(total)
}
