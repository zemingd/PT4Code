package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	// ビンゴの正誤表
	bingo := [3][3]bool{
		{false, false, false},
		{false, false, false},
		{false, false, false},
	}

	// ビンゴカード
	A := [3][3]int{}
	for y := 0; y < 3; y++ {
		var err error
		scanner.Scan()
		target := strings.Split(scanner.Text(), " ")
		for x := 0; x < 3; x++ {
			A[y][x], err = strconv.Atoi(target[x])
			if err != nil {
				log.Fatal(err)
			}
		}
	}

	// N
	scanner.Scan()
	N, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	b := make([]int, N)
	for i := 0; i < N; i++ {
		scanner.Scan()
		target, err := strconv.Atoi(scanner.Text())
		if err != nil {
			log.Fatal(err)
		}
		b[i] = target
	}
	for i := 0; i < len(b); i++ {
		for h := 0; h < 3; h++ {
			for w := 0; w < 3; w++ {
				if A[h][w] == b[i] {
					bingo[h][w] = true
				}
			}
		}
	}

	if bingo[0][0] == true && bingo[0][1] == true && bingo[0][2] == true {
		fmt.Println("Yes")
		os.Exit(0)
	}
	if bingo[1][0] == true && bingo[1][1] == true && bingo[1][2] == true {
		fmt.Println("Yes")
		os.Exit(0)
	}
	if bingo[2][0] == true && bingo[2][1] == true && bingo[2][2] == true {
		fmt.Println("Yes")
		os.Exit(0)
	}
	if bingo[0][0] == true && bingo[1][0] == true && bingo[2][0] == true {
		fmt.Println("Yes")
		os.Exit(0)
	}
	if bingo[0][1] == true && bingo[1][1] == true && bingo[2][1] == true {
		fmt.Println("Yes")
		os.Exit(0)
	}
	if bingo[0][2] == true && bingo[1][2] == true && bingo[2][2] == true {
		fmt.Println("Yes")
		os.Exit(0)
	}
	if bingo[0][0] == true && bingo[1][1] == true && bingo[2][2] == true {
		fmt.Println("Yes")
		os.Exit(0)
	}
	if bingo[2][0] == true && bingo[1][1] == true && bingo[0][2] == true {
		fmt.Println("Yes")
		os.Exit(0)
	}

	fmt.Println("No")

}
