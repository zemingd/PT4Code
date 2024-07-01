package main

import (
  "fmt"
  "bufio"
  "os"
  "strings"
  "strconv"
  "sort"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
    sc.Scan()
    return sc.Text()
}

func stringToInt(str []string) []int64 {
    f := make([]int64, len(str))
    for n := range str{
      f[n], _ = strconv.ParseInt(str[n], 10, 64)
      //f[n], _ = strconv.Atoi(str[n])
    }
    return f
}

type myInt64Slice []int64

func (p myInt64Slice) Len() int           { return len(p) }
func (p myInt64Slice) Less(i, j int) bool { return p[i] > p[j] }
func (p myInt64Slice) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

func myInt64s(a []int64)                   { sort.Sort(myInt64Slice(a)) }

func sortSlice(list []int64) []int64 {
//  sort.Sort(sort.Reverse(sort.IntSlice(list)))
//  sort.Slice(list, func(i, j int)bool {
//    return list[i] > list[j]
//  })

  return list
}

func main() {
    var types = strings.Fields(nextStr())
    var a = stringToInt(strings.Fields(nextStr()))
    var b = stringToInt(strings.Fields(nextStr()))
    var c = stringToInt(strings.Fields(nextStr()))
    var values []int64
    var x, y, z int
    var count int
    x, _ = strconv.Atoi(types[0])
    y, _ = strconv.Atoi(types[1])
    z, _ = strconv.Atoi(types[2])
    count, _ = strconv.Atoi(types[3])

    //a = sortSlice(a)
    //b = sortSlice(b)
    //c = sortSlice(c)
    myInt64s(a)
    myInt64s(b)
    myInt64s(c)
    var i = 0
    var j = 0
    var k = 0
    var m int
    m = 0

    var resa []int64
    resa = append(resa, a[i])
    var resb []int64
    resb = append(resb, b[j])
    var resc []int64
    resc = append(resc, c[k])

    for m < x + y + z {
      var numa int64
      numa = 0
      if i < x - 1 {
        numa = a[0] - a[i + 1]
      }
      var numb int64
      numb = 0
      if j < y - 1 {
        numb = b[0] - b[j + 1]
      }

      var numc int64
      numc = 0
      if k < z - 1 {
        numc = c[0] - c[k + 1]
      }

      if (numa <= numb && numa != 0 || numb == 0) && (numa < numc && numa != 0 || numc ==0) && i < x - 1 {
        i++
        resa = append(resa, a[i])
      }
      if (numb <= numa || numa == 0 && numb != 0) && (numb < numc || numc == 0 && numb != 0) && j < y - 1 {
        j++
        resb = append(resb, b[i])
      }
      if (numc <= numa || numa == 0 && numc != 0) && (numc <= numb || numb == 0 && numc != 0) && k < z - 1{
        k++
        resc = append(resc, c[i])
      }
      m++

      if count < (i + 1) * (j + 1) * (k + 1) {
        break
      }
    }
    // fmt.Println(resa, resb, resc)

    for roopa := 0; roopa < len(resa); roopa++ {
      for roopb := 0; roopb < len(resb); roopb++ {
        for roopc := 0; roopc < len(resc); roopc++ {
          values = append(values, resa[roopa] + resb[roopb] + resc[roopc])
        }
      }
    }
    values = sortSlice(values)

    var ans = values[0:count]

    for aa :=0; aa < len(ans); aa++ {
      fmt.Println(ans[aa])
    }
}

