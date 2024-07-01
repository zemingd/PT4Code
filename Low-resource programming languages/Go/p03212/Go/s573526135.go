package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func getNextLine(scanner *bufio.Reader) string {
	var buffer string
	for {
		line, isPrefix, _ := scanner.ReadLine()
		buffer += string(line)
		if isPrefix == false {
			break
		}
	}
	return buffer
}

func getIntList(scanner *bufio.Reader) []int {
	list := strings.Split(getNextLine(scanner), " ")
	l := len(list)
	result := make([]int, l)
	for i := 0; i < l; i++ {
		result[i], _ = strconv.Atoi(list[i])
	}
	return result
}

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := bufio.NewReader(fp)

	n := getNextLine(scanner)
	l := len(n)
	dp := make([][2][16]int, l+1)
	list := []rune{'0', '3', '5', '7'}
	dp[0][0][0] = 1

	for i := 0; i < l; i++ {
		for ii := 0; ii < 2; ii++ {
			for iii := 0; iii < 16; iii++ {
				for index, r := range list {
					if iii > 1 && index == 0 {
						continue
					}
					if rune(n[i]) < r && ii == 0 {
						continue
					}
					if ii == 0 && rune(n[i]) == r {
						dp[i+1][0][iii|1<<uint(index)] += dp[i][ii][iii]
						continue
					}
					dp[i+1][1][iii|1<<uint(index)] += dp[i][ii][iii]
				}
			}
		}
	}
	fmt.Println(dp[l][0][14] + dp[l][1][14] + dp[l][0][15] + dp[l][1][15])
}
