package main

import "fmt"

type key struct {
	To    int
	Color rune
}

func color3(c1, c2 rune) rune {
	if c1 == 'R' && c2 == 'G' {
		return 'B'
	}
	if c1 == 'R' && c2 == 'B' {
		return 'G'
	}
	if c1 == 'G' && c2 == 'B' {
		return 'R'
	}
	if c1 == 'G' && c2 == 'R' {
		return 'B'
	}
	if c1 == 'B' && c2 == 'R' {
		return 'G'
	}
	if c1 == 'B' && c2 == 'G' {
		return 'R'
	}
	return ' '
}

func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)

	count := make(map[key]int)
	for i, c := range s {
		if c == 'R' {
			count[key{i, 'R'}] = count[key{i - 1, 'R'}] + 1
			count[key{i, 'G'}] = count[key{i - 1, 'G'}]
			count[key{i, 'B'}] = count[key{i - 1, 'B'}]
		} else if c == 'G' {
			count[key{i, 'R'}] = count[key{i - 1, 'R'}]
			count[key{i, 'G'}] = count[key{i - 1, 'G'}] + 1
			count[key{i, 'B'}] = count[key{i - 1, 'B'}]
		} else {
			count[key{i, 'R'}] = count[key{i - 1, 'R'}]
			count[key{i, 'G'}] = count[key{i - 1, 'G'}]
			count[key{i, 'B'}] = count[key{i - 1, 'B'}] + 1
		}
	}

	sum := 0
	for i := 0; i <= n-3; i++ {
		ci := s[i]
		for j := i; j <= n-2; j++ {
			cj := s[j]
			if ci == cj {
				continue
			}
			ck := color3(rune(ci), rune(cj))
			cnt := count[key{len(s) - 1, ck}] - count[key{j, ck}]
			diff := j - i
			if j+diff <= n-1 && rune(s[j+diff]) == ck {
				cnt--
			}
			sum += cnt
		}
	}
	fmt.Println(sum)
}
