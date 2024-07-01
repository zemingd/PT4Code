package main

import (
	"fmt"
	"sort"
  "bufio"
  "os"
  "strings"
  "strconv"
)


func main() {
	var x, y, a, b, c, ans int
	fmt.Scan(&x)
	fmt.Scan(&y)
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

  stdin := bufio.NewScanner(os.Stdin)
  stdin.Scan()
  s := stdin.Text()
  split := strings.Split(s, " ")
  p := convStringListToIntList(split)
  stdin.Scan()
  s = stdin.Text()
  split = strings.Split(s, " ")
  q := convStringListToIntList(split)
  stdin.Scan()
  s = stdin.Text()
  split = strings.Split(s, " ")
  r := convStringListToIntList(split)

  pr := append(p, r...)
  qr := append(q, r...)

	sort.Ints(pr)
	sort.Ints(qr)

  pr = pr[len(pr)-x:]
  qr = qr[len(qr)-y:]

	for i := 0; i < x; i++ {
    ans += pr[len(pr)-1]
    pr = pr[:len(pr)-1]
	}
	for i := 0; i < y; i++ {
    ans += qr[len(qr)-1]
    qr = qr[:len(qr)-1]
	}
	fmt.Println(ans)
}

func convStringListToIntList(list []string) []int {
    newList := make([]int, len(list))
    for i, v := range list {
        a, _ := strconv.Atoi(v)
        newList[i] = a
    }
    return newList
}
