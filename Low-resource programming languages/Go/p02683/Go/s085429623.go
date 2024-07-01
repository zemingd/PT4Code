package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

type rowDataType struct {
	amount int
	learningPoints map[int]int
}

type stdInStruct struct {
	// read data
	numBook int // 1行目のn (行数)
	numAlgo int // 1行目のm (列数)
	numArrival int // 1行目のx
	rowData map[int]*rowDataType // 読み取ったデータそのまま

	// workspace
	totalAmount int // 購入順が確定した行の価格を足し合わせる
	tmpRowData map[int]*rowDataType // 購入順が確定したものからデータを除去する
	understandTarget map[int]int // 各アルゴリズムで理解が必要な残りポイント
}

func main() {
	s := initStdInStruct()

	for cnt := 0; cnt < s.numBook; cnt++ {
		idx := s.calcTopEfficiencyIndex()
		s.applyEfficiencyIndex(idx)
		if s.checkEnd() {
			fmt.Print(s.totalAmount)
			return
		}
	}

	if !s.checkEnd() {
		fmt.Print(-1)
		return
	}
	fmt.Print(s.totalAmount)
}

var sc = bufio.NewScanner(os.Stdin)
func readLine() string {
	sc.Scan()
	return sc.Text()
}

func mapInt(input []string) []int {
	r := make([]int, len(input))
	for i, e := range input {
		r[i], _ = strconv.Atoi(e)
	}
	return r
}

func initStdInStruct() stdInStruct {
	calcStruct := stdInStruct{}

	// initialize
	tmp := strings.Split(readLine(), " ")
	nmx := mapInt(tmp)
	calcStruct.numBook, calcStruct.numAlgo, calcStruct.numArrival = nmx[0], nmx[1], nmx[2]
	calcStruct.rowData = make(map[int]*rowDataType)
	for i := 0; i < calcStruct.numBook; i++ {
		calcStruct.rowData[i] = &rowDataType{}
		calcStruct.rowData[i].learningPoints = make(map[int]int)
	}

	// readline
	for cnt := 0; cnt < calcStruct.numBook; cnt++ {
		tmp = strings.Split(readLine(), " ")
		line := mapInt(tmp)
		calcStruct.rowData[cnt].amount = line[0]
		skillUp := line[1:]
		total := 0
		for i, e := range skillUp {
			calcStruct.rowData[cnt].learningPoints[i] = e
			total += e
		}
	}

	calcStruct.clear()
	return calcStruct
}

func (s *stdInStruct) clear() {
	s.totalAmount = 0

	s.tmpRowData = make(map[int]*rowDataType)
	for key1, val1 := range s.rowData {
		s.tmpRowData[key1] = &rowDataType{}
		s.tmpRowData[key1].amount = val1.amount
		s.tmpRowData[key1].learningPoints = make(map[int]int)
		for key2, val2 := range val1.learningPoints {
			s.tmpRowData[key1].learningPoints[key2] = val2
		}
	}

	s.understandTarget = make(map[int]int)
	for cnt := 0; cnt < s.numAlgo; cnt++ {
		s.understandTarget[cnt] = s.numArrival
	}
}

func (s stdInStruct) calcCurrentTotalAmount() int {
	total := 0
	for _, val1 := range s.tmpRowData {
		total += val1.amount
	}
	return total
}

func (s stdInStruct) calcCurrentAmountRatio() map[int]float64 {
	totalAmount := float64(s.calcCurrentTotalAmount())
	rtn := make(map[int]float64)
	for key, val := range s.tmpRowData {
		rtn[key] = float64(val.amount) / totalAmount
	}
	return rtn
}

func (s stdInStruct) calcCurrentLearningRatio() map[int]float64 {
	rtn := make(map[int]float64)
	for key1, val1 := range s.tmpRowData {
		ratio := 0.0
		cnt := 0
		for key2, val2 := range s.understandTarget {
			ratio += math.Min(float64(val1.learningPoints[key2]) / float64(val2), 1.0)
			cnt++
		}
		rtn[key1] = ratio / float64(cnt)
	}
	return rtn
}

func (s stdInStruct) calcTopEfficiencyIndex() int {
	amountRatio := s.calcCurrentAmountRatio()
	learningRatio := s.calcCurrentLearningRatio()
	currentEfficiencyRatio := 10.0
	rtn := -1
	for idx := range s.tmpRowData {
		if efficiency := amountRatio[idx] - learningRatio[idx]; efficiency < currentEfficiencyRatio {
			currentEfficiencyRatio = efficiency
			rtn = idx
		}
	}
	return rtn
}

func (s *stdInStruct) applyEfficiencyIndex(idx int) {
	s.totalAmount += s.tmpRowData[idx].amount
	var deleteCol []int
	for col := range s.understandTarget {
		s.understandTarget[col] -= s.tmpRowData[idx].learningPoints[col]
		if s.understandTarget[col] <= 0 {
			deleteCol = append(deleteCol, col)
		}
	}
	for _, col := range deleteCol {
		delete(s.understandTarget, col)
	}
	delete(s.tmpRowData, idx)
}

func (s stdInStruct) checkEnd() bool {
	return len(s.understandTarget) == 0
}
