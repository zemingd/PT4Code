package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	for i := 0; i < 100; i++ {
		for j := 0; j < 100; j++ {
			if 4*i+7*j == n {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}
