package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	scanner  *bufio.Scanner
	byWord   bool   //flag for tokenization
	eof      bool   //flag of end-of-file
	splitter string //delimiter for Ints(),
)

func main() {
	n, m := Ints2()
	ans := "Yes"
	if n > m {
		ans = "No"
	}
	fmt.Println(ans)

}

func init() {
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(scanWordsOrLines)
	eof = false
	splitter = " "
}

func scanWordsOrLines(data []byte, atEOF bool) (advance int, token []byte, err error) {
	if byWord {
		return bufio.ScanWords(data, atEOF)
	} else {
		return bufio.ScanLines(data, atEOF)
	}
}

func text(byword bool) string {
	byWord = byword
	if scanner.Scan() {
		return scanner.Text()
	}
	eof = true
	return ""
}

//basics
func EOF() bool {
	return eof
}

func Word() string {
	return text(true)
}

func Words() []string {
	return strings.Split(Line(), splitter)
}

func Line() string {
	return text(false)
}

func Lines() []string {
	var ret []string
	for {
		l := Line()
		if EOF() {
			break
		}
		ret = append(ret, l)
	}
	return ret
}

func Byte() byte {
	return byte(Uint8())
}

//auto-generated code
func Int() int {
	ret, _ := strconv.ParseInt(Word(), 10, 0)
	return int(ret)
}

func Ints() []int {
	words := Words()
	n := len(words)
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		v, _ := strconv.ParseInt(words[i], 10, 0)
		ret[i] = int(v)
	}
	return ret
}

func Ints2() (int, int) {
	return Int(), Int()
}

func Ints3() (int, int, int) {
	return Int(), Int(), Int()
}

func Ints4() (int, int, int, int) {
	return Int(), Int(), Int(), Int()
}

func Ints5() (int, int, int, int, int) {
	return Int(), Int(), Int(), Int(), Int()
}

func Ints6() (int, int, int, int, int, int) {
	return Int(), Int(), Int(), Int(), Int(), Int()
}

func Ints7() (int, int, int, int, int, int, int) {
	return Int(), Int(), Int(), Int(), Int(), Int(), Int()
}

func Ints8() (int, int, int, int, int, int, int, int) {
	return Int(), Int(), Int(), Int(), Int(), Int(), Int(), Int()
}

func Ints9() (int, int, int, int, int, int, int, int, int) {
	return Int(), Int(), Int(), Int(), Int(), Int(), Int(), Int(), Int()
}

func IntsN(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = Int()
	}
	return ret
}

func Int8() int8 {
	ret, _ := strconv.ParseInt(Word(), 10, 8)
	return int8(ret)
}

func Int8s() []int8 {
	words := Words()
	n := len(words)
	ret := make([]int8, n)
	for i := 0; i < n; i++ {
		v, _ := strconv.ParseInt(words[i], 10, 8)
		ret[i] = int8(v)
	}
	return ret
}

func Int8s2() (int8, int8) {
	return Int8(), Int8()
}

func Int8s3() (int8, int8, int8) {
	return Int8(), Int8(), Int8()
}

func Int8s4() (int8, int8, int8, int8) {
	return Int8(), Int8(), Int8(), Int8()
}

func Int8s5() (int8, int8, int8, int8, int8) {
	return Int8(), Int8(), Int8(), Int8(), Int8()
}

func Int8s6() (int8, int8, int8, int8, int8, int8) {
	return Int8(), Int8(), Int8(), Int8(), Int8(), Int8()
}

func Int8s7() (int8, int8, int8, int8, int8, int8, int8) {
	return Int8(), Int8(), Int8(), Int8(), Int8(), Int8(), Int8()
}

func Int8s8() (int8, int8, int8, int8, int8, int8, int8, int8) {
	return Int8(), Int8(), Int8(), Int8(), Int8(), Int8(), Int8(), Int8()
}

func Int8s9() (int8, int8, int8, int8, int8, int8, int8, int8, int8) {
	return Int8(), Int8(), Int8(), Int8(), Int8(), Int8(), Int8(), Int8(), Int8()
}

func Int8sN(n int) []int8 {
	ret := make([]int8, n)
	for i := 0; i < n; i++ {
		ret[i] = Int8()
	}
	return ret
}

func Int16() int16 {
	ret, _ := strconv.ParseInt(Word(), 10, 16)
	return int16(ret)
}

func Int16s() []int16 {
	words := Words()
	n := len(words)
	ret := make([]int16, n)
	for i := 0; i < n; i++ {
		v, _ := strconv.ParseInt(words[i], 10, 16)
		ret[i] = int16(v)
	}
	return ret
}

func Int16s2() (int16, int16) {
	return Int16(), Int16()
}

func Int16s3() (int16, int16, int16) {
	return Int16(), Int16(), Int16()
}

func Int16s4() (int16, int16, int16, int16) {
	return Int16(), Int16(), Int16(), Int16()
}

func Int16s5() (int16, int16, int16, int16, int16) {
	return Int16(), Int16(), Int16(), Int16(), Int16()
}

func Int16s6() (int16, int16, int16, int16, int16, int16) {
	return Int16(), Int16(), Int16(), Int16(), Int16(), Int16()
}

func Int16s7() (int16, int16, int16, int16, int16, int16, int16) {
	return Int16(), Int16(), Int16(), Int16(), Int16(), Int16(), Int16()
}

func Int16s8() (int16, int16, int16, int16, int16, int16, int16, int16) {
	return Int16(), Int16(), Int16(), Int16(), Int16(), Int16(), Int16(), Int16()
}

func Int16s9() (int16, int16, int16, int16, int16, int16, int16, int16, int16) {
	return Int16(), Int16(), Int16(), Int16(), Int16(), Int16(), Int16(), Int16(), Int16()
}

func Int16sN(n int) []int16 {
	ret := make([]int16, n)
	for i := 0; i < n; i++ {
		ret[i] = Int16()
	}
	return ret
}

func Int32() int32 {
	ret, _ := strconv.ParseInt(Word(), 10, 32)
	return int32(ret)
}

func Int32s() []int32 {
	words := Words()
	n := len(words)
	ret := make([]int32, n)
	for i := 0; i < n; i++ {
		v, _ := strconv.ParseInt(words[i], 10, 32)
		ret[i] = int32(v)
	}
	return ret
}

func Int32s2() (int32, int32) {
	return Int32(), Int32()
}

func Int32s3() (int32, int32, int32) {
	return Int32(), Int32(), Int32()
}

func Int32s4() (int32, int32, int32, int32) {
	return Int32(), Int32(), Int32(), Int32()
}

func Int32s5() (int32, int32, int32, int32, int32) {
	return Int32(), Int32(), Int32(), Int32(), Int32()
}

func Int32s6() (int32, int32, int32, int32, int32, int32) {
	return Int32(), Int32(), Int32(), Int32(), Int32(), Int32()
}

func Int32s7() (int32, int32, int32, int32, int32, int32, int32) {
	return Int32(), Int32(), Int32(), Int32(), Int32(), Int32(), Int32()
}

func Int32s8() (int32, int32, int32, int32, int32, int32, int32, int32) {
	return Int32(), Int32(), Int32(), Int32(), Int32(), Int32(), Int32(), Int32()
}

func Int32s9() (int32, int32, int32, int32, int32, int32, int32, int32, int32) {
	return Int32(), Int32(), Int32(), Int32(), Int32(), Int32(), Int32(), Int32(), Int32()
}

func Int32sN(n int) []int32 {
	ret := make([]int32, n)
	for i := 0; i < n; i++ {
		ret[i] = Int32()
	}
	return ret
}

func Int64() int64 {
	ret, _ := strconv.ParseInt(Word(), 10, 64)
	return int64(ret)
}

func Int64s() []int64 {
	words := Words()
	n := len(words)
	ret := make([]int64, n)
	for i := 0; i < n; i++ {
		v, _ := strconv.ParseInt(words[i], 10, 64)
		ret[i] = int64(v)
	}
	return ret
}

func Int64s2() (int64, int64) {
	return Int64(), Int64()
}

func Int64s3() (int64, int64, int64) {
	return Int64(), Int64(), Int64()
}

func Int64s4() (int64, int64, int64, int64) {
	return Int64(), Int64(), Int64(), Int64()
}

func Int64s5() (int64, int64, int64, int64, int64) {
	return Int64(), Int64(), Int64(), Int64(), Int64()
}

func Int64s6() (int64, int64, int64, int64, int64, int64) {
	return Int64(), Int64(), Int64(), Int64(), Int64(), Int64()
}

func Int64s7() (int64, int64, int64, int64, int64, int64, int64) {
	return Int64(), Int64(), Int64(), Int64(), Int64(), Int64(), Int64()
}

func Int64s8() (int64, int64, int64, int64, int64, int64, int64, int64) {
	return Int64(), Int64(), Int64(), Int64(), Int64(), Int64(), Int64(), Int64()
}

func Int64s9() (int64, int64, int64, int64, int64, int64, int64, int64, int64) {
	return Int64(), Int64(), Int64(), Int64(), Int64(), Int64(), Int64(), Int64(), Int64()
}

func Int64sN(n int) []int64 {
	ret := make([]int64, n)
	for i := 0; i < n; i++ {
		ret[i] = Int64()
	}
	return ret
}

func Uint() uint {
	ret, _ := strconv.ParseUint(Word(), 10, 0)
	return uint(ret)
}

func Uints() []uint {
	words := Words()
	n := len(words)
	ret := make([]uint, n)
	for i := 0; i < n; i++ {
		v, _ := strconv.ParseUint(words[i], 10, 0)
		ret[i] = uint(v)
	}
	return ret
}

func Uints2() (uint, uint) {
	return Uint(), Uint()
}

func Uints3() (uint, uint, uint) {
	return Uint(), Uint(), Uint()
}

func Uints4() (uint, uint, uint, uint) {
	return Uint(), Uint(), Uint(), Uint()
}

func Uints5() (uint, uint, uint, uint, uint) {
	return Uint(), Uint(), Uint(), Uint(), Uint()
}

func Uints6() (uint, uint, uint, uint, uint, uint) {
	return Uint(), Uint(), Uint(), Uint(), Uint(), Uint()
}

func Uints7() (uint, uint, uint, uint, uint, uint, uint) {
	return Uint(), Uint(), Uint(), Uint(), Uint(), Uint(), Uint()
}

func Uints8() (uint, uint, uint, uint, uint, uint, uint, uint) {
	return Uint(), Uint(), Uint(), Uint(), Uint(), Uint(), Uint(), Uint()
}

func Uints9() (uint, uint, uint, uint, uint, uint, uint, uint, uint) {
	return Uint(), Uint(), Uint(), Uint(), Uint(), Uint(), Uint(), Uint(), Uint()
}

func UintsN(n int) []uint {
	ret := make([]uint, n)
	for i := 0; i < n; i++ {
		ret[i] = Uint()
	}
	return ret
}

func Uint8() uint8 {
	ret, _ := strconv.ParseUint(Word(), 10, 8)
	return uint8(ret)
}

func Uint8s() []uint8 {
	words := Words()
	n := len(words)
	ret := make([]uint8, n)
	for i := 0; i < n; i++ {
		v, _ := strconv.ParseUint(words[i], 10, 8)
		ret[i] = uint8(v)
	}
	return ret
}

func Uint8s2() (uint8, uint8) {
	return Uint8(), Uint8()
}

func Uint8s3() (uint8, uint8, uint8) {
	return Uint8(), Uint8(), Uint8()
}

func Uint8s4() (uint8, uint8, uint8, uint8) {
	return Uint8(), Uint8(), Uint8(), Uint8()
}

func Uint8s5() (uint8, uint8, uint8, uint8, uint8) {
	return Uint8(), Uint8(), Uint8(), Uint8(), Uint8()
}

func Uint8s6() (uint8, uint8, uint8, uint8, uint8, uint8) {
	return Uint8(), Uint8(), Uint8(), Uint8(), Uint8(), Uint8()
}

func Uint8s7() (uint8, uint8, uint8, uint8, uint8, uint8, uint8) {
	return Uint8(), Uint8(), Uint8(), Uint8(), Uint8(), Uint8(), Uint8()
}

func Uint8s8() (uint8, uint8, uint8, uint8, uint8, uint8, uint8, uint8) {
	return Uint8(), Uint8(), Uint8(), Uint8(), Uint8(), Uint8(), Uint8(), Uint8()
}

func Uint8s9() (uint8, uint8, uint8, uint8, uint8, uint8, uint8, uint8, uint8) {
	return Uint8(), Uint8(), Uint8(), Uint8(), Uint8(), Uint8(), Uint8(), Uint8(), Uint8()
}

func Uint8sN(n int) []uint8 {
	ret := make([]uint8, n)
	for i := 0; i < n; i++ {
		ret[i] = Uint8()
	}
	return ret
}

func Uint16() uint16 {
	ret, _ := strconv.ParseUint(Word(), 10, 16)
	return uint16(ret)
}

func Uint16s() []uint16 {
	words := Words()
	n := len(words)
	ret := make([]uint16, n)
	for i := 0; i < n; i++ {
		v, _ := strconv.ParseUint(words[i], 10, 16)
		ret[i] = uint16(v)
	}
	return ret
}

func Uint16s2() (uint16, uint16) {
	return Uint16(), Uint16()
}

func Uint16s3() (uint16, uint16, uint16) {
	return Uint16(), Uint16(), Uint16()
}

func Uint16s4() (uint16, uint16, uint16, uint16) {
	return Uint16(), Uint16(), Uint16(), Uint16()
}

func Uint16s5() (uint16, uint16, uint16, uint16, uint16) {
	return Uint16(), Uint16(), Uint16(), Uint16(), Uint16()
}

func Uint16s6() (uint16, uint16, uint16, uint16, uint16, uint16) {
	return Uint16(), Uint16(), Uint16(), Uint16(), Uint16(), Uint16()
}

func Uint16s7() (uint16, uint16, uint16, uint16, uint16, uint16, uint16) {
	return Uint16(), Uint16(), Uint16(), Uint16(), Uint16(), Uint16(), Uint16()
}

func Uint16s8() (uint16, uint16, uint16, uint16, uint16, uint16, uint16, uint16) {
	return Uint16(), Uint16(), Uint16(), Uint16(), Uint16(), Uint16(), Uint16(), Uint16()
}

func Uint16s9() (uint16, uint16, uint16, uint16, uint16, uint16, uint16, uint16, uint16) {
	return Uint16(), Uint16(), Uint16(), Uint16(), Uint16(), Uint16(), Uint16(), Uint16(), Uint16()
}

func Uint16sN(n int) []uint16 {
	ret := make([]uint16, n)
	for i := 0; i < n; i++ {
		ret[i] = Uint16()
	}
	return ret
}

func Uint32() uint32 {
	ret, _ := strconv.ParseUint(Word(), 10, 32)
	return uint32(ret)
}

func Uint32s() []uint32 {
	words := Words()
	n := len(words)
	ret := make([]uint32, n)
	for i := 0; i < n; i++ {
		v, _ := strconv.ParseUint(words[i], 10, 32)
		ret[i] = uint32(v)
	}
	return ret
}

func Uint32s2() (uint32, uint32) {
	return Uint32(), Uint32()
}

func Uint32s3() (uint32, uint32, uint32) {
	return Uint32(), Uint32(), Uint32()
}

func Uint32s4() (uint32, uint32, uint32, uint32) {
	return Uint32(), Uint32(), Uint32(), Uint32()
}

func Uint32s5() (uint32, uint32, uint32, uint32, uint32) {
	return Uint32(), Uint32(), Uint32(), Uint32(), Uint32()
}

func Uint32s6() (uint32, uint32, uint32, uint32, uint32, uint32) {
	return Uint32(), Uint32(), Uint32(), Uint32(), Uint32(), Uint32()
}

func Uint32s7() (uint32, uint32, uint32, uint32, uint32, uint32, uint32) {
	return Uint32(), Uint32(), Uint32(), Uint32(), Uint32(), Uint32(), Uint32()
}

func Uint32s8() (uint32, uint32, uint32, uint32, uint32, uint32, uint32, uint32) {
	return Uint32(), Uint32(), Uint32(), Uint32(), Uint32(), Uint32(), Uint32(), Uint32()
}

func Uint32s9() (uint32, uint32, uint32, uint32, uint32, uint32, uint32, uint32, uint32) {
	return Uint32(), Uint32(), Uint32(), Uint32(), Uint32(), Uint32(), Uint32(), Uint32(), Uint32()
}

func Uint32sN(n int) []uint32 {
	ret := make([]uint32, n)
	for i := 0; i < n; i++ {
		ret[i] = Uint32()
	}
	return ret
}

func Uint64() uint64 {
	ret, _ := strconv.ParseUint(Word(), 10, 64)
	return uint64(ret)
}

func Uint64s() []uint64 {
	words := Words()
	n := len(words)
	ret := make([]uint64, n)
	for i := 0; i < n; i++ {
		v, _ := strconv.ParseUint(words[i], 10, 64)
		ret[i] = uint64(v)
	}
	return ret
}

func Uint64s2() (uint64, uint64) {
	return Uint64(), Uint64()
}

func Uint64s3() (uint64, uint64, uint64) {
	return Uint64(), Uint64(), Uint64()
}

func Uint64s4() (uint64, uint64, uint64, uint64) {
	return Uint64(), Uint64(), Uint64(), Uint64()
}

func Uint64s5() (uint64, uint64, uint64, uint64, uint64) {
	return Uint64(), Uint64(), Uint64(), Uint64(), Uint64()
}

func Uint64s6() (uint64, uint64, uint64, uint64, uint64, uint64) {
	return Uint64(), Uint64(), Uint64(), Uint64(), Uint64(), Uint64()
}

func Uint64s7() (uint64, uint64, uint64, uint64, uint64, uint64, uint64) {
	return Uint64(), Uint64(), Uint64(), Uint64(), Uint64(), Uint64(), Uint64()
}

func Uint64s8() (uint64, uint64, uint64, uint64, uint64, uint64, uint64, uint64) {
	return Uint64(), Uint64(), Uint64(), Uint64(), Uint64(), Uint64(), Uint64(), Uint64()
}

func Uint64s9() (uint64, uint64, uint64, uint64, uint64, uint64, uint64, uint64, uint64) {
	return Uint64(), Uint64(), Uint64(), Uint64(), Uint64(), Uint64(), Uint64(), Uint64(), Uint64()
}

func Uint64sN(n int) []uint64 {
	ret := make([]uint64, n)
	for i := 0; i < n; i++ {
		ret[i] = Uint64()
	}
	return ret
}

func Float32() float32 {
	ret, _ := strconv.ParseFloat(Word(), 32)
	return float32(ret)
}

func Float32s() []float32 {
	words := Words()
	n := len(words)
	ret := make([]float32, n)
	for i := 0; i < n; i++ {
		v, _ := strconv.ParseFloat(words[i], 32)
		ret[i] = float32(v)
	}
	return ret
}

func Float32s2() (float32, float32) {
	return Float32(), Float32()
}

func Float32s3() (float32, float32, float32) {
	return Float32(), Float32(), Float32()
}

func Float32s4() (float32, float32, float32, float32) {
	return Float32(), Float32(), Float32(), Float32()
}

func Float32s5() (float32, float32, float32, float32, float32) {
	return Float32(), Float32(), Float32(), Float32(), Float32()
}

func Float32s6() (float32, float32, float32, float32, float32, float32) {
	return Float32(), Float32(), Float32(), Float32(), Float32(), Float32()
}

func Float32s7() (float32, float32, float32, float32, float32, float32, float32) {
	return Float32(), Float32(), Float32(), Float32(), Float32(), Float32(), Float32()
}

func Float32s8() (float32, float32, float32, float32, float32, float32, float32, float32) {
	return Float32(), Float32(), Float32(), Float32(), Float32(), Float32(), Float32(), Float32()
}

func Float32s9() (float32, float32, float32, float32, float32, float32, float32, float32, float32) {
	return Float32(), Float32(), Float32(), Float32(), Float32(), Float32(), Float32(), Float32(), Float32()
}

func Float32sN(n int) []float32 {
	ret := make([]float32, n)
	for i := 0; i < n; i++ {
		ret[i] = Float32()
	}
	return ret
}

func Float64() float64 {
	ret, _ := strconv.ParseFloat(Word(), 64)
	return float64(ret)
}

func Float64s() []float64 {
	words := Words()
	n := len(words)
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		v, _ := strconv.ParseFloat(words[i], 64)
		ret[i] = float64(v)
	}
	return ret
}

func Float64s2() (float64, float64) {
	return Float64(), Float64()
}

func Float64s3() (float64, float64, float64) {
	return Float64(), Float64(), Float64()
}

func Float64s4() (float64, float64, float64, float64) {
	return Float64(), Float64(), Float64(), Float64()
}

func Float64s5() (float64, float64, float64, float64, float64) {
	return Float64(), Float64(), Float64(), Float64(), Float64()
}

func Float64s6() (float64, float64, float64, float64, float64, float64) {
	return Float64(), Float64(), Float64(), Float64(), Float64(), Float64()
}

func Float64s7() (float64, float64, float64, float64, float64, float64, float64) {
	return Float64(), Float64(), Float64(), Float64(), Float64(), Float64(), Float64()
}

func Float64s8() (float64, float64, float64, float64, float64, float64, float64, float64) {
	return Float64(), Float64(), Float64(), Float64(), Float64(), Float64(), Float64(), Float64()
}

func Float64s9() (float64, float64, float64, float64, float64, float64, float64, float64, float64) {
	return Float64(), Float64(), Float64(), Float64(), Float64(), Float64(), Float64(), Float64(), Float64()
}

func Float64sN(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = Float64()
	}
	return ret
}

func Words2() (string, string) {
	return Word(), Word()
}

func Words3() (string, string, string) {
	return Word(), Word(), Word()
}

func Words4() (string, string, string, string) {
	return Word(), Word(), Word(), Word()
}

func Words5() (string, string, string, string, string) {
	return Word(), Word(), Word(), Word(), Word()
}

func Words6() (string, string, string, string, string, string) {
	return Word(), Word(), Word(), Word(), Word(), Word()
}

func Words7() (string, string, string, string, string, string, string) {
	return Word(), Word(), Word(), Word(), Word(), Word(), Word()
}

func Words8() (string, string, string, string, string, string, string, string) {
	return Word(), Word(), Word(), Word(), Word(), Word(), Word(), Word()
}

func Words9() (string, string, string, string, string, string, string, string, string) {
	return Word(), Word(), Word(), Word(), Word(), Word(), Word(), Word(), Word()
}

func WordsN(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = Word()
	}
	return ret
}

func Lines2() (string, string) {
	return Line(), Line()
}

func Lines3() (string, string, string) {
	return Line(), Line(), Line()
}

func Lines4() (string, string, string, string) {
	return Line(), Line(), Line(), Line()
}

func Lines5() (string, string, string, string, string) {
	return Line(), Line(), Line(), Line(), Line()
}

func Lines6() (string, string, string, string, string, string) {
	return Line(), Line(), Line(), Line(), Line(), Line()
}

func Lines7() (string, string, string, string, string, string, string) {
	return Line(), Line(), Line(), Line(), Line(), Line(), Line()
}

func Lines8() (string, string, string, string, string, string, string, string) {
	return Line(), Line(), Line(), Line(), Line(), Line(), Line(), Line()
}

func Lines9() (string, string, string, string, string, string, string, string, string) {
	return Line(), Line(), Line(), Line(), Line(), Line(), Line(), Line(), Line()
}

func LinesN(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = Line()
	}
	return ret
}

func Bytes2() (byte, byte) {
	return Byte(), Byte()
}

func Bytes3() (byte, byte, byte) {
	return Byte(), Byte(), Byte()
}

func Bytes4() (byte, byte, byte, byte) {
	return Byte(), Byte(), Byte(), Byte()
}

func Bytes5() (byte, byte, byte, byte, byte) {
	return Byte(), Byte(), Byte(), Byte(), Byte()
}

func Bytes6() (byte, byte, byte, byte, byte, byte) {
	return Byte(), Byte(), Byte(), Byte(), Byte(), Byte()
}

func Bytes7() (byte, byte, byte, byte, byte, byte, byte) {
	return Byte(), Byte(), Byte(), Byte(), Byte(), Byte(), Byte()
}

func Bytes8() (byte, byte, byte, byte, byte, byte, byte, byte) {
	return Byte(), Byte(), Byte(), Byte(), Byte(), Byte(), Byte(), Byte()
}

func Bytes9() (byte, byte, byte, byte, byte, byte, byte, byte, byte) {
	return Byte(), Byte(), Byte(), Byte(), Byte(), Byte(), Byte(), Byte(), Byte()
}

func BytesN(n int) []byte {
	ret := make([]byte, n)
	for i := 0; i < n; i++ {
		ret[i] = Byte()
	}
	return ret
}