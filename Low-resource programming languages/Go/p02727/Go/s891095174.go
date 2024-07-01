package main

import (
	"fmt"
  "bufio"
  "os"
	"sort"
  "strconv"
)

func main() {
	var x, y, a, b, c int
	fmt.Scan(&x, &y, &a, &b, &c)
	apples := make([]apple, 0, a+b+c)
  var sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for a > 0 {
		a--
      		sc.Scan()
		k, _ := strconv.Atoi(sc.Text())
		apples = append(apples, apple{k, 1})
	}
	for b > 0 {
		b--
      		sc.Scan()
		k, _ := strconv.Atoi(sc.Text())
		apples = append(apples, apple{k, 2})
	}
	for c > 0 {
		c--
				sc.Scan()
		k, _ := strconv.Atoi(sc.Text())
		apples = append(apples, apple{k, 0})
	}
	sort.Sort(byDel(apples))
	eaten := 0
	var total int64
	for _, a := range apples {
		switch a.color {
		case 0:
			eaten++
			total += a.del
		case 1:
			if x > 0 {
				x--
				total += a.del
			}
		case 2:
			if y > 0 {
				y--
				total += a.del
			}
		}
		if eaten == x+y {
			break
		}
	}
	fmt.Printf("%d\n", total)
}

type apple struct {
	del   int64
	color int
}

type byDel []apple

func (a byDel) Len() int           { return len(a) }
func (a byDel) Less(i, j int) bool { return a[i].del > a[j].del }
func (a byDel) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
