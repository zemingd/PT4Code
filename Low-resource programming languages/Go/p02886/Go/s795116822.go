package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Get a number from stdio and convert it
	//sc.Split(bufio.ScanWords)
	sc.Scan()

	//	num, e := strconv.Atoi(sc.Text())
	//	if e != nil {
	//		panic(e)
	//	}

	// Get some numbers from stdio and convert it
	sc.Scan()
	numString := strings.Split(sc.Text(), " ")

	dl := make([]int, len(numString))
	var err error

	for i := 0; i < len(dl); i++ {
		dl[i], err = strconv.Atoi(numString[i])
		if err != nil {
			panic(err)
		}
	}

	//	fmt.Println(dl)
	//	fmt.Println("num:", num)
	//	fmt.Println("dl:", dl)

	var sum int

	for i := 0; i < len(dl)-1; i++ {
		for j := i + 1; j < len(dl); j++ {
			sum += dl[i] * dl[j]
		}
	}

	fmt.Println(sum)
}