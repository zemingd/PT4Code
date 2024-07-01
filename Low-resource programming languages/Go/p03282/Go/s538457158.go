package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	var str string
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%s", &str)
	chars := strings.Split(str, "")

	var K int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &K)

	ns := make([]int, len(chars))
	for i, c := range chars {
		ns[i], _ = strconv.Atoi(c)
	}

	countFirstOne := 0
	notOne := -1
	for _, n := range ns {
		if n == 1 {
			countFirstOne++
		} else {
			notOne = n
			break
		}
	}

	if K <= countFirstOne {
		fmt.Println(1)
	} else {
		fmt.Println(notOne)
	}
}
