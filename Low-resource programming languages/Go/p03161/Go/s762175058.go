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
	var dp [100000]int64
	var hList [100000]int64
	n, _ = strconv.Atoi(inputs[0])
	k, _ = strconv.Atoi(inputs[1])
	stdin.Scan()
	hInput := strings.Split(stdin.Text(), " ")
	for i := 0; i < n; i++ {
		hList[i], _ = strconv.ParseInt(hInput[i], 10, 64)
		if i == 0 {
			dp[i] = 0
			continue
		}
		for j := 1; j <= i && j <= k; j++ {
			var diff int64
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
