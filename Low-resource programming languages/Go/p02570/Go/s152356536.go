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
	distance, _ := strconv.ParseFloat(scanner.Text(), 64)

	scanner.Scan()
	time, _ := strconv.ParseFloat(scanner.Text(), 64)

	scanner.Scan()
	speed, _ := strconv.ParseFloat(scanner.Text(), 64)

	if distance/speed > time {
		fmt.Println("No")
		return
	}
	fmt.Println("Yes")
}
