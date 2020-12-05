log using "C:\Users\hp\Desktop\Econometrics-End-Term-Project\Question_1\Q1.log", replace
import excel "C:\Users\hp\Desktop\Econometrics-End-Term-Project\Question_1\scores_data.xlsx", sheet("Sheet1") firstrow clear
codebook course_result
codebook test_score
replace course_result="1" if course_result=="Pass"
replace course_result="0" if course_result=="Fail"
destring course_result, replace
list
reg course_result test_score
graph twoway scatter course_result test_score
log close
