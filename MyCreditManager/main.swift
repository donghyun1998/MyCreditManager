//
//  main.swift
//  MyCreditManager
//
//  Created by 동현 on 2023/04/23.
//

import Foundation

enum   Grade: Float
{
    case aplus = 4.5
    case a     = 4
    case bplus = 3.5
    case b     = 3
    case cplus = 2.5
    case c     = 2
    case dplus = 1.5
    case d     = 1
    case f     = 0
}

var Subject : (String, String) = ("dummy", "F")

class Student
{
    var name: String
    var student_record: Dictionary<String, String> = Dictionary<String, String>() // subject = grade
    
    init(name: String)
    {
        self.name = name
    }
}

func    x_cmd()
{
    print("프로그램을 종료합니다...")
    exit(0)
}

var students: Dictionary<String, Student> = Dictionary<String, Student>()

func    add_student()
{
    print("추가할 학생의 이름을 입력해주세요")
    
    let name = readLine()
    if let str = name
    {
        if students[str] == nil
        {
            students[str] = Student(name: str)
            print("\(str) 학생을 추가했습니다.")
        }
        else
        {
            print("\(str)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
        }
    }
    else
    {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        return
    }
}

func    delete_student()
{
    print("삭제할 학생의 이름을 입력해주세요")
    
    let name = readLine()
    if let str = name
    {
        if students[str] == nil
        {
            print("\(str) 학생을 찾지 못했습니다.")
        }
        else
        {
            students[str] = nil
            print("\(str) 학생을 삭제하였습니다.")
        }
    }
    else
    {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        return
    }
}

func    add_grade()
{
    print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
    print("입력예) Mickey Swift A+")
    print("만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
    
    let name = readLine()
    if let str = name
    {
//        if students[str] == nil
//        {
//            print("\(str) 학생을 찾지 못했습니다.")
//        }
//        else
//        {
//            students[str] = nil
//            print("\(str) 학생을 삭제하였습니다.")
//        }
    }
    else
    {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        return
    }
}




while (true)
{
    print("원하는 기능을 입력해주세요")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    let input = readLine()
    
    switch input
    {
        case "1":
            add_student()
        case "2":
            delete_student()
        case "3":
            add_grade()
        case "4":
            print("성적삭제")
        case "5":
            print("평점보기")
        case "X":
            x_cmd()
        default:
            print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
    }
}
