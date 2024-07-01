package main

import (
	"bufio"
	"fmt"
	"os"
)

type operation struct {
	from, to point
}

type point struct {
	y, x int
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	var H, W int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &H)
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &W)

	var mp [][]int
	mp = make([][]int, H)
	for i := 0; i < len(mp); i++ {
		mp[i] = make([]int, W)
	}

	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			scanner.Scan()
			fmt.Sscanf(scanner.Text(), "%d", &mp[i][j])
		}
	}

	operations := make([]operation, 0)
	for i := 0; i < H-1; i++ {
		for j := 0; j < W; j++ {
			if mp[i][j]%2 == 1 {
				mp[i][j]--
				mp[i+1][j]++
				operations = append(operations, operation{
					point{i, j},
					point{i + 1, j},
				})
			}
		}
	}

	for j := 0; j < W-1; j++ {
		if mp[H-1][j]%2 == 1 {
			mp[H-1][j]--
			mp[H-1][j+1]++
			operations = append(operations, operation{
				point{H - 1, j},
				point{H - 1, j + 1},
			})
		}
	}

	fmt.Println(len(operations))
	for _, op := range operations {
		fmt.Println(op.from.y, op.from.x, op.to.y, op.to.x)
	}
}
