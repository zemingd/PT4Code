package main

import (
	"fmt"
	"os"
	"strings"
	"sync"
	"bufio"

)

var h,w int

func main() {
	fmt.Scanf("%d %d", &h, &w)

	reader := bufio.NewScanner(os.Stdin)

	grid := make([][]string, h)
	for i := 0; i<h; i++ {
		reader.Scan()
		grid[i] = strings.Split(reader.Text(), "")
	}


	left := [2000][2000]int{}
	right := [2000][2000]int{}
	up := [2000][2000]int{}
	down := [2000][2000]int{}

	wg := sync.WaitGroup{}
	wg.Add(4)

	go func() {
		for i := 0; i < h; i++ {
			cnt := 0
			for j := 0; j < w; j++ {
				if grid[i][j] == "#" {
					cnt = 0
					left[i][j] = 0
					continue
				}
				cnt++
				left[i][j] = cnt
			}
		}
		wg.Done()
	}()

	go func() {
		for i := 0; i < h; i++ {
			cnt := 0
			for j := w - 1; j >= 0; j-- {
				if grid[i][j] == "#" {
					cnt = 0
					right[i][j] = 0
					continue
				}
				cnt++
				right[i][j] = cnt
			}
		}
		wg.Done()
	}()

	go func() {
		for j := 0; j < w; j++ {
			cnt := 0
			for i := 0; i < h; i++ {
				if grid[i][j] == "#" {
					cnt = 0
					up[i][j] = 0
					continue
				}
				cnt++
				up[i][j] = cnt
			}
		}
		wg.Done()
	}()

	go func() {
		for j := 0; j < w; j++ {
			cnt := 0
			for i := h - 1; i >= 0; i-- {
				if grid[i][j] == "#" {
					cnt = 0
					down[i][j] = 0
					continue
				}
				cnt++
				down[i][j] = cnt
			}
		}
		wg.Done()
	}()

	wg.Wait()

	max := 0
	for i := 0; i<h; i++ {
		for j := 0; j<w; j++ {
			if grid[i][j] != "#" {
				current := left[i][j] +right[i][j]+up[i][j]+down[i][j]-3
				if current > max {
					max = current
				}
			}
		}
	}

	fmt.Println(max)
}

