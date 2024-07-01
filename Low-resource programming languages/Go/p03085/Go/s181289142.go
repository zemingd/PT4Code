package main

import (
  "fmt"
  "bufio"
  "strings"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLineInt() int {
  sc.Scan()
  data, _ := strconv.Atoi(sc.Text())
  return data
}

func nextLineString() string {
  sc.Scan()
  return sc.Text()
}

func main() {
  var nq =  strings.Fields(nextLineString())
  // var nq = []string{"8","3"}
  var s = nextLineString()
  // var s = "ACACTACG"
  // var n, q int
  // n, _ = strconv.Atoi(nq[0])
  var q int
  q, _ = strconv.Atoi(nq[1])

  var l []int
  var r []int

  for rq := 0; rq < q; rq++ {
    var line = strings.Fields(nextLineString())
    var li, ri int
    li, _ = strconv.Atoi(line[0])
    ri, _ = strconv.Atoi(line[1])
    l = append(l, li)
    r = append(r, ri)
  }
  //l = append(l, 3)
  //l = append(l, 2)
  //l = append(l, 1)
  //r = append(r, 7)
  //r = append(r, 3)
  //r = append(r, 8)

  for i := 0; i < q; i++ {
    var start = l[i] - 1
    var end  = r[i]

    var str = s[start:end]
    // fmt.Println(str)

    var count = strings.Count(str, "AC")
    fmt.Println(count)
  }

  // fmt.Println(n)
  // fmt.Println(q)
  // fmt.Println(s)
  // fmt.Println(l)
  // fmt.Println(r)
}
