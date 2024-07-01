package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n int
	_, _ = fmt.Scan(&n)
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	d := strings.Split(scanner.Text(), " ")
	foods := make([]int, 4096)
	
	for index, str := range d {
		foods[index], _ = strconv.Atoi(str)
	}
	
	sum := 0
	
	for index, num := range foods {
		for index2, num2 := range foods {
			if index != index2 {
				sum += num * num2
			}
		}
	}
	
	fmt.Println(sum / 2)
}
