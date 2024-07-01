package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	K, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	X, _ := strconv.Atoi(sc.Text())

	start := X - K + 1

	end := X + K - 1

	for i := start; i <= end; i++ {
		if i == end {
			fmt.Println(i)
			return
		}

		fmt.Print(i, " ")

	}

}