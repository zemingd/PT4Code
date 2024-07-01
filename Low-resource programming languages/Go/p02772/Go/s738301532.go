package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var N int
	fmt.Scan(&N)

	var cardStr string
	sc := bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		cardStr = sc.Text()
	}

	var total []int
	total = make([]int, N, N)

	cardArray := strings.Split(cardStr, " ")

	for i, valueStr := range cardArray {
		value, _ := strconv.Atoi(valueStr)
		total[i] = value
	}

	isDenied := false
	for _, value := range total {
		if value%2 == 0 {
			if value%3 != 0 && value%5 != 0 {
				fmt.Println("DENIED")
				isDenied = true
			}
		}
	}
	if !isDenied {
		fmt.Println("APPROVED")
	}
}
