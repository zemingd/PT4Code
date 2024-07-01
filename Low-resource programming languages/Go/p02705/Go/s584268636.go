package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	if scanner.Scan() {
		a, _ := strconv.Atoi(scanner.Text())
		b := float64(a)
		c := b * float64(2) * 3.1415
		fmt.Println(c)
	}
}
