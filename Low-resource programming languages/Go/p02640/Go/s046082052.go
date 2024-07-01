package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	x, err := strconv.Atoi(input())
	if err != nil {
		log.Fatalln(err)
	}

	y, err := strconv.Atoi(input())
	if err != nil {
		log.Fatalln(err)
	}

	for a := 0; a <= x; a++ {
		b := x - a

		if y == 2*a+4*b {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
}
