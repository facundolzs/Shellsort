Dim flag As Integer
Dim gap As Integer, temp As Integer, i As Integer
Dim arrN(1 To 30) As Single
Const FALSE = 0, TRUE = Not FALSE
Randomize Timer

Print "Random list: "
Print
For i = 1 To 30
    arrN(i) = Int(Rnd * 100) + 1
    Print arrN(i);
Next i
gap = Int(30 / 2)
Do While gap >= 1
    Do
        flag = TRUE
        For i = 1 To 30 - gap
            If arrN(i) > arrN(i + gap) Then
                temp = arrN(i)
                arrN(i) = arrN(i + gap)
                arrN(i + gap) = temp
                flag = FALSE
            End If
        Next i
    Loop Until flag = TRUE
    gap = Int(gap / 2)
Loop

Rem Test algorithm with 30 random numbers
Print: Print: Print
Print "Sorted by Shell Sort algorithm: "
Print
For i = 1 To 30
    Print arrN(i);
Next i
End
