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

	for i := 0; i < N; i++ {
		scanner.Scan()
		target, err := strconv.Atoi(scanner.Text())
		if err != nil {
			log.Fatal(err)
		}

		// 偶数判定
		if target%2 == 0 {
			// 3, 5 倍数判定
			if target%3 != 0 && target%5 != 0 {
				fmt.Println("DENIED")
				os.Exit(0)
			}
		}
	}
	fmt.Println("APPROVED")
}
