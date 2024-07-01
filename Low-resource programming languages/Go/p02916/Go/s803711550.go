package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	scanner.Scan()
	n, _ := strconv.Atoi(scanner.Text())
	
	dishes := make([]int, n)
	points := make([]int, n)
	bonuses := make([]int, n-1)
	
	for i := 0; i < n; i++ {
		scanner.Scan()
		j, _ := strconv.Atoi(scanner.Text())
		dishes[i] = j - 1
	}
	
	for i := 0; i < n; i++ {
		scanner.Scan()
		j, _ := strconv.Atoi(scanner.Text())
		points[i] = j
	}
	
	for i := 0; i < n-1; i++ {
		scanner.Scan()
		j, _ := strconv.Atoi(scanner.Text())
		bonuses[i] = j
	}
	
	answer := 0
	
	for i, s := range dishes {
		if i != 0 {
			if s == dishes[i-1]+1 {
				answer += bonuses[s-1]
			}
		}
		answer += points[s]
	}
	
	fmt.Println(answer)
}
