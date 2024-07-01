package main

import (
  "bufio"
  "fmt"
  "os"
  "sort"
  "strconv"
  "strings"
)

const (
  InputSize = 500000 // 10^5
)
var (
  rdr = bufio.NewReaderSize(os.Stdin, InputSize)
)

func readLine() string {
  buf := make([]byte, 0, InputSize)
  for {
    l, p, e := rdr.ReadLine()
    if e != nil {
      panic(e)
    }
    buf = append(buf, l...)
    if !p {
      break
    }
  }
  return string(buf)
}


func getStringArray() []string {
  return strings.Split(readLine(), " ")
}


func nextLineValue() int {
  v, _ := strconv.Atoi(readLine())
  return v
}

func nextLineValues() []int {
  return getIntArray(readLine())
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

func removeDupStringSlice(values *[]string) []string {
  m := make(map[string]bool)
  uniq := []string{}
  for _, v := range *values {
    if !m[v] {
      uniq = append(uniq, v)
      m[v] = true
    }
  }
  return uniq
}

func countUniqIntInSlice(values *[]int) map[int]int {
  uniq := make(map[int]int)
  for _, v := range *values {
    if _, ok := uniq[v]; !ok {
      uniq[v] = 1
    } else {
      uniq[v] += 1
    }
  }
  return uniq
}

func countUniqStringInSlice(values *[]string) map[string]int {
  uniq := make(map[string]int)
  for _, v := range *values {
    if _, ok := uniq[v]; !ok {
      uniq[v] = 1
    } else {
      uniq[v] += 1
    }
  }
  return uniq
}

func Reverse(s string) string {
  runes := []rune(s)
  for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
    runes[i], runes[j] = runes[j], runes[i]
  }
  return string(runes)
}


func main() {
  sArray := strings.Split(readLine(), "")
  q := nextLineValue()

  directionFlag := true

  for i:=0; i<q; i++ {
    input := getStringArray()
    if input[0] == "1" {
      directionFlag = !directionFlag
      continue
    }
    placeHead := true
    if input[1] == "1" {
      placeHead = directionFlag
    } else {
      placeHead = !directionFlag
    }
    if placeHead {
      sArray = append([]string{input[2]}, sArray...)
    } else {
      sArray = append(sArray, input[2])
    }
  }
  if directionFlag {
    fmt.Println(strings.Join(sArray, ""))
  } else {
    ss := strings.Join(sArray, "")
    fmt.Println(Reverse(ss))
  }
}
