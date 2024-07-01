package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// n is not small thus we use bufio to scan inputs

var sc = bufio.NewScanner(os.Stdin)

// create a function to read integer one by one
func nextInt() int {
	sc.Scan()
	// read as string and covert to int
	i, err := strconv.Atoi(sc.Text())
	// error handling
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	// idea is to count the number of 2 as a factor for each inputs and get sum
	// prepare temporary storage for number
	var tmp int
	//count 2 as a factor
	var total int
	sc.Split(bufio.ScanWords)
	// read first inputs to know how many numbers are upcoming
	n := nextInt()
	// iterating n times
	for i := 0; i < n; i++ {
		// scan int one by one and set to temporary variable
		tmp = nextInt()
		j := tmp
		// how many factor 2 are in that variable
		for j > 1 {
			if j%2 != 0 {
				break
			} else {
				total++
				j /= 2
			}
		}
	}
	fmt.Printf("%d", total)
}
