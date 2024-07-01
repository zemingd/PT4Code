package main

import "fmt"

type block struct {
	center int
	len int
}

func (b block) lcenter() int {
	if b.len % 2 == 0 {
		return b.len / 2
	}

	if (b.center + 1) > b.center / 2 {
		return b.len/2 + 1
	}

	return b.len/2
}

func (b block) rcenter() int {
	if b.len % 2 == 0 {
		return b.len / 2
	}

	if (b.center + 1) <= b.center / 2 {
		return b.len/2 + 1
	}

	return b.len/2
}

func main() {
	var S string
	fmt.Scanf("%s", &S)

	var blocks []block
	var currentBlock block = block{}
	mode := "right"
	for _, s := range S {
		if mode == "right" {
			if s == 'L' {
				currentBlock.center = currentBlock.len - 1
				mode = "left"
			}
		} else {
			if s == 'R' {
				blocks = append(blocks, currentBlock)
				currentBlock = block{}
				mode = "right"
			}
		}
		currentBlock.len++
	}
	blocks = append(blocks, currentBlock)
	
	for _, b := range blocks {
		for i := 0; i < b.len; i++ {
			if i == b.center {
				fmt.Println(b.lcenter())
			} else if i == (b.center + 1) {
				fmt.Println(b.rcenter())
			} else {
				fmt.Println(0)
			}
		}
	}
}
