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
	// ans := make([]int, n+1)
	count := 0
	for i := 1; i <= n; i++ {
	B:
		for x := 1; x <= int(math.Sqrt(float64(i))); x++ {

			for y := x; y <= int(math.Sqrt(float64(i))); y++ {
				if int(math.Pow(float64(x), float64(2))+math.Pow(float64(y), float64(2))+math.Pow(float64(z), float64(2))+float64(x*y)+float64(y*z)+float64(z*x)) > i {
					break
				}
				for z := y; z <= int(math.Sqrt(float64(i))); z++ {
					fmt.Println(x, y, z, i)
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
	// for _, v := range ans {
	// 	fmt.Printf("%v\n", v)
	// }
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
