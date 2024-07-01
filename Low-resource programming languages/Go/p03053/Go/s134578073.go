package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	in := split(getln(), " ")
	h := parseInt(in[0])
	w := parseInt(in[1])

	mp := make(map[int]map[int]string)
	var black []*Pair
	for i := 0; i < h; i++ {
		in := []rune(getln())
		row := make(map[int]string)
		for j := 0; j < w; j++ {
			row[j+1] = string(in[j])
			if string(in[j]) == "#" {
				black = append(black, newPair(i+1, j+1))
			}
		}
		mp[i+1] = row
	}
	var q []*Pair
	for _, b := range black {
		cand := []*Pair{
			newPair(b.I-1, b.J),
			newPair(b.I+1, b.J),
			newPair(b.I, b.J-1),
			newPair(b.I, b.J+1),
		}
		for _, c := range cand {
			cstr, ok := mp[c.I][c.J]
			if ok && cstr == "." {
				mp[c.I][c.J] = "?"
				q = append(q, c)
			}
		}
	}

	// fmt.Println(mp)
	count := 0
	for {
		count += 1
		var newq []*Pair
		for _, p := range q {
			pstr, ok := mp[p.I][p.J]
			if ok && pstr != "#" {
				mp[p.I][p.J] = "#"
				cand := []*Pair{
					newPair(p.I-1, p.J),
					newPair(p.I+1, p.J),
					newPair(p.I, p.J-1),
					newPair(p.I, p.J+1),
				}
				for _, c := range cand {
					cstr, ok := mp[c.I][c.J]
					if ok && cstr == "." {
						mp[c.I][c.J] = "?"
						newq = append(newq, c)
					}
				}
			}
		}
		q = newq
		// dump(mp)
		if len(q) == 0 {
			break
		}
	}
	fmt.Print(count)
}

// func dump(mp map[int]map[int]string) {
// 	for _, row := range mp {
// 		for _, e := range row {
// 			fmt.Print(e)
// 		}
// 		fmt.Print("\n")
// 	}
// 	fmt.Print("\n")
// }

type Pair struct {
	I int
	J int
}

func newPair(i int, j int) *Pair {
	p := new(Pair)
	p.I = i
	p.J = j
	return p
}


func getln() string {
	stdin.Scan()
	return strings.TrimSpace(stdin.Text())
}

func split(t string, sep string) []string {
	return strings.Split(t, sep)
}
func parseInt(t string) int {
	i, _ := strconv.Atoi(t)
	return i
}
