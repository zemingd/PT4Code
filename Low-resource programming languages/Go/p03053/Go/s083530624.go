package main

import (
	"fmt"
	"strings"
)

func check(data []string) bool {
	for _, s := range data {
		if strings.Contains(s, ".") {
			return false
		}
	}
	return true
}

func write(data []string) {
	mask := []string{}
	var buf string
	for y := 0; y < len(data); y++ {
		buf = ""
		for x := 0; x < len([]rune(data[0])); x++ {
			if []rune(data[y])[x] == '#' {
				buf += " "
				continue
			}
			// 上
			if y != 0 {
				if []rune(data[y-1])[x] == '#' {
					buf += "1"
					continue
				}
			}
			// 右
			if x != len([]rune(data[0]))-1 {
				if []rune(data[y])[x+1] == '#' {
					buf += "1"
					continue
				}
			}

			// 下
			if y != len(data)-1 {
				if []rune(data[y+1])[x] == '#' {
					buf += "1"
					continue
				}
			}

			// 左
			if x != 0 {
				if []rune(data[y])[x-1] == '#' {
					buf += "1"
					continue
				}
			}
			buf += " "
		}
		mask = append(mask, buf)
	}

	for y := 0; y < len(data); y++ {
		for x := 0; x < len([]rune(data[y])); x++ {
			c := []rune(mask[y])[x]
			if c == '1' {
				buf := []rune(data[y])
				buf[x] = '#'
				data[y] = string(buf)
			}
		}
	}
}

func main() {
	var h, w int
	fmt.Scanf("%d%d", &h, &w)

	a := make([]string, h)

	for i := 0; i < h; i++ {
		var buf string
		fmt.Scanf("%s", &buf)

		a[i] = buf
	}

	var cnt int
	for {
		write(a)
		cnt++
		if check(a) {
			break
		}
	}

	fmt.Println(cnt)

}
