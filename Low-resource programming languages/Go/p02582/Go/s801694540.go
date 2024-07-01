package main

import (
	"bufio"
	crypto_rand "crypto/rand"
	"encoding/binary"
	"fmt"
	"math"
	math_rand "math/rand"
	"os"
	"strconv"
	"strings"
)

const (
	maxInt = math.MaxInt64 //int(^uint(0) >> 1)
)

var (
	scanner  *bufio.Scanner
	byWord   bool   //flag for tokenization
	eof      bool   //flag of end-of-file
	splitter string //delimiter for Ints(), etc.
)

func consecRain(s string) int {
	ret := 0
	temp := 0
	consec := false
	t := s + "S"
	for i := 0; i < len(t); i++ {
		if t[i] == 'R' {
			temp++
			consec = true
		} else {
			if consec {
				if temp > ret {
					ret = temp
				}
				temp = 0
				consec = false
			}
		}
	}
	return ret
}

func main() {
	s := Line()
	fmt.Println(consecRain(s))
}

//----------------------------------------------------
// Basic functions
//----------------------------------------------------

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max3(a, b, c int) int {
	return max(max(a, b), c)
}

func min3(a, b, c int) int {
	return min(min(a, b), c)
}

//----------------------------------------------------
// Input functions
//----------------------------------------------------

func init() {
	//for io
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Buffer([]byte{}, maxInt)
	scanner.Split(scanWordsOrLines)
	eof = false
	splitter = " "

	//for rand
	var b [8]byte
	_, err := crypto_rand.Read(b[:])
	if err != nil {
		panic("cannot seed math/rand package with cryptographically secure random number generator")
	}
	math_rand.Seed(int64(binary.LittleEndian.Uint64(b[:])))
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

//---------------------------------------------
// Useful Data Structures
//---------------------------------------------

//---------------------------------------------
// Binary Index Tree(BIT)
//---------------------------------------------

type BIT struct {
	n   int
	bit []int
}

//factory
//create n elements Binary Index Tree pointer
//because of 1-indexed, an extra space is needed
func BIT_New(n int) *BIT {
	bit := make([]int, n+1)
	return &BIT{n, bit}
}

//add x to i-th cell
func (b *BIT) Add(i, x int) {
	for i <= b.n {
		b.bit[i] += x
		i += i & -i
	}
}

//summation from i-th to j-th index
func (b *BIT) Sum(i, j int) int {
	return b.sum(j) - b.sum(i-1)
}

//summation from 0 to i-th index
func (b *BIT) sum(i int) int {
	ret := 0
	for i > 0 {
		ret += b.bit[i]
		i -= i & -i
	}
	return ret
}

//---------------------------------------------
// Union Find
//---------------------------------------------

type UnionFind struct {
	dataNum int //total data size, 0-indexed
	parent  []int
	rank    []int //hight of tree
	size    []int
}

//factory
func UF_New(n int) *UnionFind {
	parent := make([]int, n)
	for i := 0; i < n; i++ {
		parent[i] = i
	}
	rank := make([]int, n)
	size := make([]int, n)
	for i := 0; i < n; i++ {
		size[i] = 1
	}
	return &UnionFind{n, parent, rank, size}
}

//find the root of x-th
func (uf *UnionFind) find(x int) int {
	if x == uf.parent[x] {
		return x
	}
	p := uf.find(uf.parent[x])
	uf.parent[x] = p
	return p
}

//merge two groups represented by x, y resp.
func (uf *UnionFind) Merge(x, y int) {
	x = uf.find(x)
	y = uf.find(y)
	if x == y { //do nothing if both belong to the same
		return
	}
	//update size
	s := uf.size[x] + uf.size[y]
	uf.size[x] = s
	uf.size[y] = s

	//update parent and rank
	if uf.rank[x] < uf.rank[y] {
		uf.parent[x] = y
	} else {
		uf.parent[y] = x
		if uf.rank[x] == uf.rank[y] {
			uf.rank[x]++
		}
	}
}

func (uf *UnionFind) Same(x, y int) bool {
	return uf.find(x) == uf.find(y)
}

func (uf *UnionFind) Size(x int) int {
	return uf.size[uf.find(x)]
}

//---------------------------------------------
// Range Minimum Query
//---------------------------------------------

type RMQ struct {
	n, maxN int
	dat     []int
}

// factory
func RMQ_New(n int) *RMQ {
	maxN := 1
	for maxN < n {
		maxN *= 2
	}
	size := 2*maxN - 1
	dat := make([]int, 2*maxN-1)
	for i := 0; i < size; i++ {
		dat[i] = maxInt
	}
	return &RMQ{n, maxN, dat}
}

//update k-th(0-indexed) value to a
func (rmq *RMQ) Update(k, a int) {
	k += rmq.maxN - 1
	rmq.dat[k] = a
	for k > 0 {
		k = (k - 1) / 2
		rmq.dat[k] = min(rmq.dat[k*2+1], rmq.dat[k*2+2])
	}
}

//return minmum value among [a,b]
func (rmq *RMQ) Min(a, b int) int {
	return rmq.query(a, b+1, 0, 0, rmq.maxN)
}

func (rmq *RMQ) query(a, b, k, l, r int) int {
	if (r <= a) || (b <= l) {
		return maxInt
	}
	if (a <= l) && (r <= b) {
		return rmq.dat[k]
	}
	v1 := rmq.query(a, b, k*2+1, l, (l+r)/2)
	v2 := rmq.query(a, b, k*2+2, (l+r)/2, r)
	return min(v1, v2)
}

//---------------------------------------------
// Numerical functions
//---------------------------------------------

//return the greatest common divisor of (a,b)
func GCD(a, b int) int {
	if a == 0 {
		return b
	}
	return GCD(b%a, a)
}

//Extended Euclid Algorithm
//return (d,x,y) s.t. d==gcd(a,b)=ax+by
//a must NOT be 0
func EEA(a, b int) (int, int, int) {
	d0, x0, y0, d1, x1, y1 := a, 1, 0, b, 0, 1
	for d1 != 0 {
		q := d0 / d1
		d0, x0, y0, d1, x1, y1 = d1, x1, y1, d0-q*d1, x0-q*x1, y0-q*y1
	}
	return d0, x0, y0
}

//return inverse of a on Z_p i.e. a* InvZ(A)=1 on Z_p
//ensure a returned value positive
//a must NOT be 0
func InvZ(a, p int) int {
	_, x, _ := EEA(a, p)
	if x < 0 {
		q := (-x + p - 1) / p
		x += p * q
	}
	return x % p
}

//                   [n]
//return combination [r] mod p
func CombZ(n, r, p int) int {
	if r > n/2 {
		r = n - r
	}
	if r == 0 {
		return 1
	}
	if n < 0 {
		return 0
	}
	ret := 1
	for i := n; i >= n-r+1; i-- {
		ret = (ret * i) % p
	}
	for i := r; i >= 2; i-- {
		inv := InvZ(i, p)
		ret = (ret * inv) % p
	}
	return ret
}

//return x where x%m==a for all i
//x is uniquely determinded in mod m[0]*m[1]*...*m[n]
//m must be coprime
func ChineseRemainder(remainders, mods []int) int {
	a, m := 0, 1
	for i := 0; i < len(mods); i++ {
		b, n := remainders[i], mods[i]
		_, u, v := EEA(m, n)
		mm := m * n
		a = (((((a * n) % mm) * v) % mm) + ((((b * m) % mm) * u) % mm)) % mm
		m = mm
		if a < 0 {
			q := (-a + m - 1) / m
			a += q * m
		}
	}
	return a
}

//return primes below n with half memory
//Sieve of Eratosthenes
func Prime(n int) []int {
	if n < 2 {
		return []int{}
	}
	upper := n / 2
	noPrime := make([]bool, upper+1) //omit even
	noPrime[0] = true
	ret := []int{2}
	for i := 1; i < upper; i++ {
		if noPrime[i] {
			continue
		} else {
			realNum := 2*i + 1
			ret = append(ret, realNum)

			for k := 3 * realNum; k <= n; k += 2 * realNum {
				noPrime[k/2] = true
			}
		}
	}
	return ret
}