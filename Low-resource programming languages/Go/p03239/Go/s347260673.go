package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"
)

func check(e error) {
	if e != nil {
		log.Fatalf("error: %v", e)
	}
}

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	firstInputs := strings.Split(stdin.Text(), " ")
	N, err := strconv.Atoi(firstInputs[0])
	check(err)
	T, err := strconv.Atoi(firstInputs[1])
	check(err)

	min := 1001
	for i := 1; i <= N; i++ {
		stdin.Scan()
		inputs := strings.Split(stdin.Text(), " ")
		cost, err := strconv.Atoi(inputs[0])
		check(err)
		time, err := strconv.Atoi(inputs[1])
		check(err)

		if time <= T {
			if cost < min {
				min = cost
			}
		}
	}

	if min == 1001 {
		fmt.Println("TLE")
	} else {
		fmt.Println(min)
	}
}