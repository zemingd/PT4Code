package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	// N
	scanner.Scan()
	N, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	// d
	d := make([]int, N)
	for i := 0; i < N; i++ {
		scanner.Scan()
		target, err := strconv.Atoi(scanner.Text())
		if err != nil {
			log.Fatal(err)
		}
		d[i] = target
	}

	all := 0
	for x := 0; x < N; x++ {
		for y := 0; y < N; y++ {
			all += d[x] * d[y]
		}
		all -= d[x] * d[x]
	}

	fmt.Println(all / 2)

}