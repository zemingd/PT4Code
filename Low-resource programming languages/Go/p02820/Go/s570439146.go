package main

import (
    "bufio"
    "fmt"
    "os"
    "strings"
    "strconv"
    "regexp"
)

func main() {
    // r:1 s:2 p:3
    scanner := bufio.NewScanner(os.Stdin)
    var r string
    // 自分のハンド履歴
    var hist[] int
    r, _ = readOneLine(scanner)
    ios := strAry2intAry(split(r))
    var n = ios[0]
    var k = ios[1]
    r, _ = readOneLine(scanner)
    ios = strAry2intAry(split(r))
    var rock   = ios[0]
    var scisor = ios[1]
    var paper  = ios[2]
    r, _ = readOneLine(scanner)
    jun := r
    
    sum := 0
    for i:=0;i<n;i++ {
        switch string(jun[i]) {
            case "r":
                if histCheck(hist, 3, k) {
                    sum += paper
                    hist = append(hist, 3)
                } else {
                    sum += 0
                    hist = append(hist, 1)
                }
            case "s":
                if histCheck(hist, 1, k) {
                    sum += rock
                    hist = append(hist, 1)
                } else {
                    sum += 0
                    hist = append(hist, 2)
                }
            case "p":
                if histCheck(hist, 2, k) {
                    sum += scisor
                    hist = append(hist, 2)
                } else {
                    sum += 0
                    hist = append(hist, 3)
                }
        }
    }
    fmt.Println(sum)
}

func histCheck(hist []int, hand int, prevRange int) bool {
    if prevRange > len(hist) {
        return true
    }
    if hand != hist[len(hist)-prevRange] {
        return true
    }
    return false
}

func readOneLine(scanner *bufio.Scanner) (string, bool) {
    var s string
    var eof = false
    if scanner.Scan() {
        s = scanner.Text()
    } else {
        eof = true
    }
    return s, eof
}

func s2i(s string) int {
    var intVal,_ = strconv.Atoi(s)
    return intVal
}

func i2s(i int) string {
    return string(i)
}

func s2f(s string) float64 {
    var floatVal,_ = strconv.ParseFloat(s, 64)
    return floatVal
}

func sum(i []int) int {
    sum := 0
    for _,val := range i {
        sum += val
    }
    return sum
}

func split(s string) []string {
    return strings.Fields(s)
}

func strAry2intAry(strs []string) []int {
    var ret = make([]int, 0, len(strs))
    for _ , str := range strs {
        var intVal, _ = strconv.Atoi(string(str));
        ret = append(ret, intVal)
    }
    return ret
}

func intAry2strAry(nums []int) []string {
    var ret = make([]string, 0, len(nums))
    for _ , num := range nums {
        var strVal = strconv.Itoa(num);
        ret = append(ret, strVal)
    }
    return ret
}

func ary2str(strs []string) string {
    return strings.Join(strs, " ")
}

func regexpExample() {
    // Your code here!
    var str = "13:20"
    r := regexp.MustCompile(`(\d+):(\d+)`)
    fmt.Println(r.FindStringSubmatch(str))
}

func reverse(res []int) []int {
    for i, j := 0, len(res)-1; i < j; i, j = i+1, j-1 {
        res[i], res[j] = res[j], res[i]
    }
    return res
}
