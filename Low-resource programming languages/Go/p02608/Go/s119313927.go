package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main() {
	scanner := Scanner()
	n := ReadInt(scanner)

	// ans := make(map[int]int, n)
	nMax := 10 * 10 * 10 * 10
	ans := make([]int, nMax+1)
	// count := 0

	for x := 1; x*x <= nMax; x++ {
		for y := 1; y*y <= nMax; y++ {
			for z := 1; z*z <= nMax; z++ {
				// fmt.Println(x, y, z)
				result := x*x + y*y + z*z + x*y + y*z + z*x
				if result <= nMax {
					// fmt.Println(x, y, z, x*x+y*y+z*z+x*y+y*z+z*x)
					ans[result-1]++
				}
			}
		}
	}

	for i := 0; i < n; i++ {
		fmt.Println(ans[i])
	}
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
