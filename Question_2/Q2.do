log using "C:\Users\hp\Desktop\Study Material (SNU)\Semester 5\ECO 213 - Basic Data Analysis and Econometrics\End_Term_Project\Question_2\Q2.log"
use "C:\Users\hp\Desktop\Study Material (SNU)\Semester 5\ECO 213 - Basic Data Analysis and Econometrics\End_Term_Project\Question_2\EAWE22.dta", clear
codebook ASVABC, SM, SF, MALE
codebook ASVABC SM SF MALE
reg S ASVABC SM SF MALE
codebook S
gen MALESVC = MALE*ASVABC
codebook MALESVC
gen MALEASVC = MALE*ASVABC
reg S ASVABC SM SF ETHBLACK ETHHISP MALE MALEASVC
log close
