package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
)

func main() {
	scanner := Scanner()
	n := ReadInt(scanner)

	// ans := make(map[int]int, n)
	count := 0
	for i := 1; i <= n; i++ {
	B:
		for x := 1; x <= i; x++ {
			x = x
			for y := x; y <= i; y++ {
				for z := x; z <= i; z++ {
					// fmt.Println(x, y, z, i)
					if int(math.Pow(float64(x), float64(2))+math.Pow(float64(y), float64(2))+math.Pow(float64(z), float64(2))+float64(x*y)+float64(y*z)+float64(z*x)) > i {
						break
					}
					if int(math.Pow(float64(x), float64(2))+math.Pow(float64(y), float64(2))+math.Pow(float64(z), float64(2))+float64(x*y)+float64(y*z)+float64(z*x)) == i {
						// fmt.Println(x, y, z, i, int(math.Pow(float64(x), float64(2))+math.Pow(float64(y), float64(2))+math.Pow(float64(z), float64(2))+float64(x*y)+float64(y*z)+float64(z*x)))
						if x == y && y == z {
							count++
							break B
						} else {
							count++
							count++
							count++
							break B
						}
					}
				}
			}
		}
		// ans[i] = count
		fmt.Println(count)
		count = 0
	}
	// fmt.Println(ans)
}

func Scanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

func ReadInt(scanner *bufio.Scanner) int {
	var t string

	if scanner.Scan() {
		t = scanner.Text()
	}

	n, err := strconv.Atoi(t)
	if err != nil {
		log.Fatal(err)
	}

	return n

}
