package main

import "fmt"

func main() {
	var Card [9]int
	for i := 0; i < 9; i++ {
		Card[i] = readInt()
	}

	N := readInt()
	for i := 0; i < N; i++ {
		b := readInt()
		for i, v := range Card {
			if b == v {
				Card[i] = -1
			}
		}
	}

	for i := 0; i < 3; i++ {
		//縦
		if Card[i] == -1 && Card[i+3] == -1 && Card[i+6] == -1 {
			goto Bingo
		}

		//横
		if Card[i*3] == -1 && Card[i*3+1] == -1 && Card[i*3+2] == -1 {
			goto Bingo
		}
	}

	//斜め
	if Card[0] == -1 && Card[4] == -1 && Card[8] == -1 {
		goto Bingo
	}

	if Card[2] == -1 && Card[4] == -1 && Card[6] == -1 {
		goto Bingo
	}

	fmt.Println("No")
	return

Bingo:
	fmt.Println("Yes")
	return
}

func readInt() int {
	var v int
	fmt.Scan(&v)
	return v
}
