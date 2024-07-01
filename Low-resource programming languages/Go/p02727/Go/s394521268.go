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

  p = p[len(p)-x:]
  q = q[len(q)-y:]

  sort.Ints(p)
  sort.Ints(q)
  var d []int
  d = append(d, p...)
  d = append(d, q...)
  d = append(d, r...)
  sort.Ints(d)

	for i := 0; i < x+y; i++ {
    ans += d[len(d)-1]
    d = d[:len(d)-1]
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
