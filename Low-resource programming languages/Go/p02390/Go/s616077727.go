package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var text string
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		text = scanner.Text()
	}
	n, _ := strconv.Atoi(text)
	hour := n / 3600
	n = n - hour*3600
	minute := n / 60
	second := n - minute*60
	fmt.Printf("%v:%v:%v\n", hour, minute, second)
}

