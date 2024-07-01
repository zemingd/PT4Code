package main

import (
  "bufio"
  "bytes"
  "io/ioutil"
  "os"
  "sort"
  "strconv"
  "strings"
  "unsafe"
)

const (
  InputSize = 500000 // 10^5
)

func getReader() *bufio.Reader {
  return bufio.NewReaderSize(os.Stdin, InputSize)
}

func readAllFromStdin() *bufio.Reader {
  rdr := bufio.NewReader(os.Stdin)
  buf, _ := ioutil.ReadAll(rdr)
  return bufio.NewReader(bytes.NewReader(buf))
}


func readLine(rdr *bufio.Reader) string {
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

func readLineX(rdr *bufio.Reader) []byte {
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
  return buf
}


func getStringArray(rdr *bufio.Reader) []string {
  return strings.Split(readLine(rdr), " ")
}


func nextLineValue(rdr *bufio.Reader) int {
  v, _ := strconv.Atoi(readLine(rdr))
  return v
}

func nextLineValues(rdr *bufio.Reader) []int {
  return getIntArray(readLine(rdr))
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


func reverseString(s string) string {
  ss := stringToByte(s)
  for i, j := 0, len(ss)-1; i < j; i, j = i+1, j-1 {
    ss[i], ss[j] = ss[j], ss[i]
  }
  return byteToString(&ss)
}

func reverseBytes(b bytes.Buffer) []byte {
  ss := b.Bytes()
  for i, j := 0, len(ss)-1; i < j; i, j = i+1, j-1 {
    ss[i], ss[j] = ss[j], ss[i]
  }
  return ss
}

func byteToString(b *[]byte) string {
  return *(*string)(unsafe.Pointer(b))
}

func stringToByte(s string) []byte {
  return *(*[]byte)(unsafe.Pointer(&s))
}

func getStringBuffer(s string) bytes.Buffer {
  var b bytes.Buffer
  b.Write(stringToByte(s))
  return b
}

func addStringToBuffer(s string, buf *bytes.Buffer) {
  buf.Write(stringToByte(s))
}


func main() {
  bufReader := readAllFromStdin() // getReader()
  readLine(bufReader)
  q := nextLineValue(bufReader)

  directionFlag := true
  //bufHead := new(bytes.Buffer)
  //bufTail := new(bytes.Buffer)

  for i:=0; i<q; i++ {
    readLineX(bufReader)
    directionFlag = !directionFlag
    //input := getStringArray(bufReader)
    //if input[0] == "1" {
    //  directionFlag = !directionFlag
    //  continue
    //}
    //placeHead := true
    //if input[1] == "1" {
    //  placeHead = directionFlag
    //} else {
    //  placeHead = !directionFlag
    //}
    //if placeHead {
    //  addStringToBuffer(input[2], bufHead)
    //} else {
    //  addStringToBuffer(input[2], bufTail)
    //}
  }
  //
  //if directionFlag {
  //  sH := reverseString(bufHead.String())
  //  fmt.Printf("%s%s%s\n", sH, startString, bufTail.String())
  //} else {
  //  sT := reverseString(bufTail.String())
  //  fmt.Printf("%s%s%s\n", sT, reverseString(startString), bufHead.String())
  //}
}
