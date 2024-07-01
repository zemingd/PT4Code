package main

import "fmt"

func main() {
	var (
		n, k, r, s, p int
		t             string
	)
	fmt.Scan(&n, &k, &r, &s, &p, &t)

	hs := []rune{'r', 's', 'p'}

	ans := 0
	for i := 0; i < k; i++ {
		bh := 'x'
		for j := i; j < n; j += k {
			var h rune
			switch t[j] {
			case 'r':
				h = 'p'
			case 's':
				h = 'r'
			case 'p':
				h = 's'
			}

			if h == bh {
				for _, v := range hs {
					if v == h {
						continue
					}
					if j+k < n && h == rune(t[j+k]) {
						h = v
						break
					}
					h = v
				}
			} else {
				switch h {
				case 'r':
					ans += r
				case 's':
					ans += s
				case 'p':
					ans += p
				}
			}
			bh = h
		}
	}
	fmt.Println(ans)
}
