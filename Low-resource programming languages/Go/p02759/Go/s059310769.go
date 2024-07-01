package main

import (
  "bufio"
  "fmt"
  "os"
  "sort"
  "strconv"
  "strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
  sc.Scan()
  return sc.Text()
}

func nextLineValue() int {
  sc.Scan()
  return getInt(sc.Text())
}

func nextLineValues() []int {
  sc.Scan()
  return getIntArray(sc.Text())
}

func getInt(s string) int {
  v, _ := strconv.Atoi(s)
  return v
}

func getIntArray(s string) []int {
  var v []int
  valstr := strings.Split(s, " ")
  for _, c := range valstr {
    va, _ := strconv.Atoi(c)
    v = append(v, va)
  }
  return v
}

func digitTotal(v int) int {
  total := 0
  d := strings.Split(strconv.Itoa(v), "")
  for _, c := range d {
    dv, _ := strconv.Atoi(c)
    total += dv
  }
  return total
}

func sortDesc(v *[]int) {
  sort.Sort(sort.Reverse(sort.IntSlice(*v)))
}

func removeDupIntSlice(values *[]int) []int {
  m := make(map[int]bool)
  uniq := []int{}
  for _, v := range *values {
    if !m[v] {
      uniq = append(uniq, v)
      m[v] = true
    }
  }
  return uniq
}


func main() {
  s := nextLineValue()

  if s % 2 == 1 {
    fmt.Print((s+1)/2)
  } else {
    fmt.Print(s/2)
  }
}
