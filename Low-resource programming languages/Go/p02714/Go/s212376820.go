package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	cs := make(map[byte][]int)
	cs['R'] = make([]int, n+1)
	cs['G'] = make([]int, n+1)
	cs['B'] = make([]int, n+1)
	for i := 0; i < n; i++ {
		c := s[i]

		cs['R'][i+1] = cs['R'][i]
		cs['G'][i+1] = cs['G'][i]
		cs['B'][i+1] = cs['B'][i]

		cs[c][i+1]++
	}

	ans := 0
	for i := 0; i < n-2; i++ {
		rgb := map[byte]int{'R': 0, 'G': 0, 'B': 0}
		rgb[s[i]]++
		for j := i + 1; j < n; j++ {
			if s[i] == s[j] {
				continue
			}
			rgb[s[j]]++

			t := byte('@')
			if rgb['R'] == 0 {
				t = 'R'
			} else if rgb['G'] == 0 {
				t = 'G'
			} else {
				t = 'B'
			}

			cc := cs[t]
			cnt := cc[n] - cc[j]
			d := j - i
			if j+d < n {
				if s[j+d] == t {
					cnt--
				}
			}
			ans += cnt

			rgb[s[j]]--
		}
		rgb[s[i]]--
	}

	fmt.Println(ans)
}
