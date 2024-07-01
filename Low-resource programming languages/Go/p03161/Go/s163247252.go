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
	var hInput string
	for stdin.Scan() {
		hInput += stdin.Text()
	}
	hSplit := strings.Split(hInput, " ")
	for i = 0; i < n; i++ {
		hList[i], _ = strconv.Atoi(hSplit[i])
		dp[i] = 0
		for j = 1; j <= i && j <= k; j++ {
		}
	}
	fmt.Println(dp[0])
	fmt.Println(hList[0])
	fmt.Println(k)
	fmt.Println(i)
	fmt.Println(j)
	fmt.Println(diff)
	fmt.Println(hInput[0])
}
