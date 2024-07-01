package main

import (
	"bufio"
	"fmt"
	"os"
)

var H, W int
var grid [][]int

func main() {
	H, W = ReadInt(), ReadInt()
	grid = make([][]int, H)
	for i := 0; i < H; i++ {
		grid[i] = ReadInts(W)
	}

	paths := []string{}
	prefix := [][]int{}
	for y := 0; y < H; y++ {
		for i := 0; i < W; i++ {
			x := i
			if y%2 == 1 {
				x = W - i - 1
			}
			if len(prefix) > 0 {
				// tracing
				prefix = append(prefix, []int{y, x})
			}
			if grid[y][x]%2 == 1 {
				if len(prefix) == 0 {
					// start trace
					prefix = append(prefix, []int{y, x})
					continue
				}
				// found goal
				for i := 0; i < len(prefix)-1; i++ {
					paths = append(paths,
						fmt.Sprintf("%d %d %d %d",
							prefix[i][0]+1,   // y
							prefix[i][1]+1,   // x
							prefix[i+1][0]+1, // next y
							prefix[i+1][1]+1, // next x
						),
					)
				}
				prefix = nil
			}
		}
	}

	fmt.Println(len(paths))
	for _, path := range paths {
		fmt.Println(path)
	}
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
