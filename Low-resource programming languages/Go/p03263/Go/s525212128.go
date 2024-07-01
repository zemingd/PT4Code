package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	H, W := scanInt(), scanInt()
	Map := make([][]int, H)
	for i := 0; i < H; i++ {
		Map[i] = make([]int, W)
		for j := 0; j < W; j++ {
			Map[i][j] = scanInt()
		}
	}

	N := 0
	ans := make([][4]int, 0)
	for i := 0; i < H; i++ {
		for j := 0; j < W-1; j++ {
			if Map[i][j]%2 == 1 {
				N++
				Map[i][j]--
				Map[i][j+1]++
				ans = append(ans, [4]int{i + 1, j + 1, i + 1, j + 2})
			}
		}
	}
	for i := 0; i < H-1; i++ {
		if Map[i][W-1]%2 == 1 {
			N++
			Map[i][W-1]--
			Map[i+1][W-1]++
			ans = append(ans, [4]int{i + 1, W, i + 2, W})
		}
	}

	fmt.Println(N)
	for i := 0; i < N; i++ {
		fmt.Printf("%d %d %d %d\n", ans[i][0], ans[i][1], ans[i][2], ans[i][3])
	}
}
