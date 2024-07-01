package main
import (
    "bufio"
    "fmt"
    "math"
    "os"
    "strconv"
    "strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*10)

func main() {
    list := getStdinArr()
    A, _ := strconv.Atoi(list[0])
    B, _ := strconv.ParseFloat(list[1], 64)
    a := A
    b := int(math.Round(B * 100))
    fmt.Println((a*b)/100)
}


func getStdin() string {
    return readLine()
}
func getStdinInt() int {
    str := getStdin()
    res, _ := strconv.Atoi(str)
    return res
}
func getStdinintArr() []int {
    str := getStdin()
    list := strings.Split(str, " ")
    res := make([]int, len(list))
    for idx, v := range list {
        res[idx], _ = strconv.Atoi(v)
    }
    return res
}
func getStdinArr() []string {
    str := getStdin()
    list := strings.Split(str, " ")
    return list
}
func getStdinIntArr64() []int64 {
    str := getStdin()
    list := strings.Split(str, " ")
    res := make([]int64, len(list))
    for idx, v := range list {
        res[idx], _ = strconv.ParseInt(v, 10, 64)
    }
    return res
}
func readLine() string {
    buf := make([]byte, 0, 0)
    for {
        l, p, e := sc.ReadLine()
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