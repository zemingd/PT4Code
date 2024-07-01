package main

import "fmt"

func main() {
	var n int
	var line string
	fmt.Scan(&n, &line)
	prev := string(line[0])
	flg := prev == "#"
	count := 0
	black, white := 0, 0
	if flg {
		count++
	}
	for i := 1; i < n; i++ {
		next := string(line[i])
		if next == "#" {
			flg = true
		}
		if flg && prev != next {
			if prev == "." {
				white += count
			} else {
				black += count
			}
			count = 0
		}
		if flg {
			count++
		}
		prev = next
	}
	if prev == "." {
		white += count
	}
	if white > black {
		fmt.Println(black)
	} else {
		fmt.Println(white)
	}
}