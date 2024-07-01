package main

import (
	"fmt"
	"os"
	"bufio"
	"strings"
	"strconv"
)

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

func main(){
	in := split(getln(), " ")
	h := parseInt(in[0])
	w := parseInt(in[1])

	mp := make(map[int]map[int]string)
	var q []*Pair
	for i := 0; i < h; i++ {
		in := []rune(getln())
		row := make(map[int]string)
		for j := 0; j < w; j++ {
			row[j+1] = string(in[j])
			if string(in[j]) == "#" {
				q = append(q, newPair(i, j))
			}
		}
		mp[i+1] = row
	}
	count := 0
	for {
		count += 1
		var newq []*Pair 
		for _, p := range q{
			pstr, ok := mp[p.I][p.J]
			if ok && pstr != "#" {
				mp[p.I][p.J] = "#"
				cand := []*Pair {
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
		q := newq
		if len(q) == 0 {
			break
		}
	}
	// fmt.Println(black)
	fmt.Print(count)
}

func getln() string{
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	return strings.TrimSpace(stdin.Text())
}

func split(t string, sep string) []string{
	return strings.Split(t, sep)
}
func parseInt(t string) int{
	i, _ := strconv.Atoi(t)
	return i
}