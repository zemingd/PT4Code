package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"strings"
)

func main() {
	var h, w int
	bytes, _ := ioutil.ReadAll(os.Stdin)
	s := string(bytes)
	lines := strings.Split(s, "\n")
	fmt.Sscanf(lines[0], "%d %d", &h, &w)

	searchPoints := make(map[int]map[int]bool)
	blackPoints := make(map[int]map[int]bool)
	for i := 1; i < len(lines); i++ {
		fmt.Sscanf(lines[i], "%s", &s)
		/*
		index := strings.IndexByte(s, '#')
		for index != -1 {
			if _, ok := blackPoints[i]; !ok {
				blackPoints[i] = make(map[int]bool)
				searchPoints[i] = make(map[int]bool)
			}
			blackPoints[i][index] = true
			searchPoints[i][index] = true
			index = strings.IndexByte(s[index+1:], '#')
		}
		*/
		for j := 0; j < w; j++ {
			if s[j] == '#' {
				if _, ok := blackPoints[i-1]; !ok {
					blackPoints[i-1] = make(map[int]bool)
					searchPoints[i-1] = make(map[int]bool)
				}
				blackPoints[i-1][j] = true
				searchPoints[i-1][j] = true
			}
		}
	}

	ret := bfs(searchPoints, blackPoints, h, w, 0)

	fmt.Println(ret)
}

func bfs(searchPoints map[int]map[int]bool, blackPoints map[int]map[int]bool, h int, w int, step int) int {
	// fmt.Printf("%v\n", searchPoints)
	nextPoints := make(map[int]map[int]bool)
	for i := range searchPoints {
		for j := range searchPoints[i] {
			if i > 0 && !blackPoints[i-1][j] {
				if _, ok := blackPoints[i-1]; !ok {
					blackPoints[i-1] = make(map[int]bool)
				}
				blackPoints[i-1][j] = true
				if _, ok := nextPoints[i-1]; !ok {
					nextPoints[i-1] = make(map[int]bool)
				}
				nextPoints[i-1][j] = true
			}
			if i < h-1 && !blackPoints[i+1][j] {
				if _, ok := blackPoints[i+1]; !ok {
					blackPoints[i+1] = make(map[int]bool)
				}
				blackPoints[i+1][j] = true
				if _, ok := nextPoints[i+1]; !ok {
					nextPoints[i+1] = make(map[int]bool)
				}
				nextPoints[i+1][j] = true
			}
			if j > 0 && !blackPoints[i][j-1] {
				if _, ok := blackPoints[i]; !ok {
					blackPoints[i] = make(map[int]bool)
				}
				blackPoints[i][j-1] = true
				if _, ok := nextPoints[i]; !ok {
					nextPoints[i] = make(map[int]bool)
				}
				nextPoints[i][j-1] = true
			}
			if j < w-1 && !blackPoints[i][j+1] {
				if _, ok := blackPoints[i]; !ok {
					blackPoints[i] = make(map[int]bool)
				}
				blackPoints[i][j+1] = true
				if _, ok := nextPoints[i]; !ok {
					nextPoints[i] = make(map[int]bool)
				}
				nextPoints[i][j+1] = true
			}
		}
	}

	if len(nextPoints) == 0 {
		return step
	}
	return bfs(nextPoints, blackPoints, h, w, step+1)
}
