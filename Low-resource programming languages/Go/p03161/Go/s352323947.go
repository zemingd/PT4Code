package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	inputs := strings.Split(stdin.Text(), " ")
	var n, k, i, j int
	n, _ = strconv.Atoi(inputs[0])
	k, _ = strconv.Atoi(inputs[1])
	var dp [100000]int
	var hList [10000]int
	var diff int
	stdin.Scan()
	hInput := strings.Split(stdin.Text(), " ")
	for i = 0; i < 1000; i++ {
		hList[i], _ = strconv.Atoi(hInput[i])
		dp[i] = 0
		for j = 1; j <= i && j <= k; j++ {
			if hList[i] > hList[i-j] {
				diff = hList[i] - hList[i-j]
			} else {
				diff = hList[i-j] - hList[i]
			}
			if dp[i] == 0 {
				dp[i] = diff + dp[i-j]
			}
			if dp[i-j]+diff < dp[i] {
				dp[i] = dp[i-j] + diff
			}
		}
	}
	fmt.Println(dp[n-1])
}
