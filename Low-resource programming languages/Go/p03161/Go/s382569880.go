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
	k, _ = strconv.Atoi(inputs[1])
	var dp [100000]int
	var hList [10000]int
	stdin.Scan()
	hInput := strings.Split(stdin.Text(), " ")
	for i := 0; i < n; i++ {
		hList[i], _ = strconv.Atoi(hInput[i])
		dp[i] = 0
		for j := 1; j <= i && j <= k; j++ {
		}
	}
	fmt.Println(dp[n-1])
}
