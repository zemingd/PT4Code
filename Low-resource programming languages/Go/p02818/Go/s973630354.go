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
    scanner := bufio.NewScanner(os.Stdin)
    var r string
    r, _ = readOneLine(scanner)
    ios := strAry2intAry(split(r))
    var tk = ios[0]
    var ao = ios[1]
    var k = ios[2]
    for i:=0;i<k;i++ {
        if tk > 0 {
            tk--
            continue
        }
        if ao > 0 {
            ao--
            continue
        }
    }
    fmt.Println(tk,ao)
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