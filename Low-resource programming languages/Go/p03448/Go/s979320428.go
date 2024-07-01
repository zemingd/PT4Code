package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func check(e error) {
	if e != nil {
		log.Fatalf("error: %v", e)
	}
}

func scanNumber(scanner *bufio.Scanner) int {
	scanner.Scan()
	num, err := strconv.Atoi(scanner.Text())
	check(err)
	return num
}

func main() {
	stdin := bufio.NewScanner(os.Stdin)

	a := scanNumber(stdin)
	b := scanNumber(stdin)
	c := scanNumber(stdin)
	x := scanNumber(stdin)

	var count int

	for aCoins := 0; aCoins <= a; aCoins++ {
		for bCoins := 0; bCoins <= b; bCoins++ {
			for cCoins := 0; cCoins <= c; cCoins++ {
				if sum := 500*aCoins + 100*bCoins + 50*cCoins; sum == x {
					count++
				}
			}
		}
	}

	fmt.Println(count)

}