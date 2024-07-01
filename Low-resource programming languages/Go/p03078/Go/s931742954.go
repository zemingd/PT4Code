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

func stringToInt(str []string) []int {
    f := make([]int, len(str))
    for n := range str{
        f[n], _ = strconv.Atoi(str[n])
    }
    return f
}

func sortSlice(list []int) []int {
  sort.Slice(list, func(i, j int)bool {
    return list[i] > list[j]
  })

  return list
}

func sortCakeSlice(list []cake) []cake {
  sort.Slice(list, func(i, j int)bool {
    return list[i].value > list[j].value
  })

  return list
}

type cake struct {
	value int
	cake_type int
}

func main() {
    var types = strings.Fields(nextStr())
    var a = stringToInt(strings.Fields(nextStr()))
    var b = stringToInt(strings.Fields(nextStr()))
    var c = stringToInt(strings.Fields(nextStr()))
    var values []int
    var x, y, z int
    var count int
    x, _ = strconv.Atoi(types[0])
    y, _ = strconv.Atoi(types[1])
    z, _ = strconv.Atoi(types[2])
    count, _ = strconv.Atoi(types[3])

    a = sortSlice(a)
    b = sortSlice(b)
    c = sortSlice(c)

    var i = 0
    var j = 0
    var k = 0
    var m = 0

    var resa []int
    resa = append(resa, a[i])
    var resb []int
    resb = append(resb, b[j])
    var resc []int
    resc = append(resc, c[k])

    for m < x + y + z {
      var numa = 0
      if i < x - 1 {
        numa = a[0] - a[i + 1]
      }
      var numb = 0
      if j < y - 1 {
        numb = b[0] - b[j + 1]
      }

      var numc = 0
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
    fmt.Println(resa, resb, resc)

    for roopa := 0; roopa < len(resa); roopa++ {
      for roopb := 0; roopb < len(resb); roopb++ {
        for roopc := 0; roopc < len(resc); roopc++ {
          values = append(values, resa[roopa] + resb[roopb] + resc[roopc])
        }
      }
    }
    values = sortSlice(values)

    fmt.Println(values[0:count])
}

