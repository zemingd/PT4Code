package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var n, d int

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	bingoCard := make([][]int, 3)
	bingoOpened := make([][]bool, 3)
	for i := 0; i < 3; i++ {
		bingoCard[i] = make([]int, 3)
		bingoOpened[i] = []bool{false, false, false}
	}
	sc.Split(bufio.ScanWords)
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			bingoCard[i][j] = nextInt()
		}
	}

	bingoFlag := false
	n := nextInt()
	for k := 0; k < n; k++ {
		tmp := nextInt()
		for i := 0; i < 3; i++ {
			for j := 0; j < 3; j++ {
				if bingoCard[i][j] == tmp {
					bingoOpened[i][j] = true
					if checkBingo(bingoOpened, i, j) {
						fmt.Println("Yes")
						bingoFlag = true
					}
				}
				if bingoFlag {
					break
				}
			}
			if bingoFlag {
				break
			}
		}
		if bingoFlag {
			break
		}
	}
	if !bingoFlag {
		fmt.Println("No")
	}
}

func checkBingo(bingoOpened [][]bool, x, y int) bool {
	if (bingoOpened[x][0] == true &&
		bingoOpened[x][1] == true &&
		bingoOpened[x][2] == true) ||
		(bingoOpened[0][y] == true &&
			bingoOpened[1][y] == true &&
			bingoOpened[2][y] == true) {
		return true
	}
	if (x == 0 && y == 2) || (x == 2 && y == 0) || (x == 1 && y == 1) {
		if bingoOpened[0][2] == true &&
			bingoOpened[1][1] == true &&
			bingoOpened[2][0] == true {
			return true
		}
	}
	if (x == 0 && y == 0) || (x == 2 && y == 2) || (x == 1 && y == 1) {
		if bingoOpened[0][0] == true &&
			bingoOpened[1][1] == true &&
			bingoOpened[2][2] == true {
			return true
		}
	}

	return false
}
