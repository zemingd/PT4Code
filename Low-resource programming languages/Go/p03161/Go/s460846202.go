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
	var n, k int
	n, _ = strconv.Atoi(inputs[0])
	var dp []int
	var hList []int
	var h int
	k, _ = strconv.Atoi(inputs[1])
	stdin.Scan()
	hInput := strings.Split(stdin.Text(), " ")
	for i := 0; i < n; i++ {
		h, _ = strconv.Atoi(hInput[i])
		dp = append(dp, 0)
		hList = append(hList, h)
		for j := 1; j <= i && j <= k; j++ {
			var diff int
			if hList[i] > hList[i-j] {
				diff = hList[i] - hList[i-j]
			} else {
				diff = hList[i-j] - hList[i]
			}
			if dp[i] < 1 {
				dp[i] = diff + dp[i-j]
				continue
			}
			if dp[i-j]+diff < dp[i] {
				dp[i] = dp[i-j] + diff
			}
		}
	}
	fmt.Println(dp[n-1])
}
