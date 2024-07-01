package main

import (
	"bufio"
	"log"
	"os"
	"strconv"
	"fmt"
)

func main()  {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	scanner.Scan()
	N, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	scanner.Scan()
	S := scanner.Text()
	scanner.Scan()
	T := scanner.Text()

	answer := ""

	for i := 0; i < N; i++ {
		answer += S[i:i+1] + T[i:i+1]
	}

	fmt.Println(answer)
}