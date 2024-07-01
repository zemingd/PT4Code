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
	inputArr := strings.Split(stdin.Text(), " ")
	numbers := make([]int, 3, 3)
	for i, v := range inputArr {
		numbers[i], _ = strconv.Atoi(v)
	}
	remainder := numbers[2] - (numbers[0] - numbers[1])
	if remainder >= 0 {
		fmt.Println(remainder)
	} else {
		fmt.Println(0)
	}
}
