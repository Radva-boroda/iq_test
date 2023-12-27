import 'package:flutter/material.dart';
import '../data/questions.dart';

List<Questions> getQuestionsList() {

  var Q1 = Questions();
  Q1.question = Image.asset('assets/images/Questions/1/q1_main.jpg');
  Q1.imageNumber = '1';
  Q1.correctAnswer = 3;
  Q1.answerList = [
    Image.asset('assets/images/Questions/1/q1_a.jpg'),
    Image.asset('assets/images/Questions/1/q1_c.jpg'),
    Image.asset('assets/images/Questions/1/q1_d.jpg'),
    Image.asset('assets/images/Questions/1/q1_true.jpg'),
    Image.asset('assets/images/Questions/1/q1_e.jpg'),
    Image.asset('assets/images/Questions/1/q1_f.jpg'),
  ];

  var Q2 = Questions();
  Q2.question = Image.asset('assets/images/Questions/2/q2_main.png');
  Q2.imageNumber = '2';
  Q2.correctAnswer = 3;
  Q2.answerList = [
    Image.asset('assets/images/Questions/2/q2_a.png'),
    Image.asset('assets/images/Questions/2/q2_b.png'),
    Image.asset('assets/images/Questions/2/q2_c.png'),
    Image.asset('assets/images/Questions/2/q2_true.png'),
    Image.asset('assets/images/Questions/2/q2_e.png'),
    Image.asset('assets/images/Questions/2/q2_f.png'),
  ];

  var Q3 = Questions();
  Q3.question = Image.asset('assets/images/Questions/3/q3_main.png');
  Q3.imageNumber = '3';
  Q3.correctAnswer = 1;
  Q3.answerList = [
    Image.asset('assets/images/Questions/3/q3_a.png'),
    Image.asset('assets/images/Questions/3/q3_true.png'),
    Image.asset('assets/images/Questions/3/q3_b.png'),
    Image.asset('assets/images/Questions/3/q3_c.png'),
    Image.asset('assets/images/Questions/3/q3_d.png'),
    Image.asset('assets/images/Questions/3/q3_e.png'),
  ];

  var Q4 = Questions();
  Q4.question = Image.asset('assets/images/Questions/4/q4_main.png');
  Q4.imageNumber = '3';
  Q4.correctAnswer = 0;
  Q4.answerList = [
    Image.asset('assets/images/Questions/4/q4_true.png'),
    Image.asset('assets/images/Questions/4/q4_b.png'),
    Image.asset('assets/images/Questions/4/q4_c.png'),
    Image.asset('assets/images/Questions/4/q4_e.png'),
    Image.asset('assets/images/Questions/4/q4_a.png'),
    Image.asset('assets/images/Questions/4/q4_f.png'),
  ];

  var Q5 = Questions();
  Q5.question = Image.asset('assets/images/Questions/5/q5_main.png');
  Q5.imageNumber = '3';
  Q5.correctAnswer = 4;
  Q5.answerList = [
    Image.asset('assets/images/Questions/5/q5_a.png'),
    Image.asset('assets/images/Questions/5/q5_c.png'),
    Image.asset('assets/images/Questions/5/q5_d.png'),
    Image.asset('assets/images/Questions/5/q5_e.png'),
    Image.asset('assets/images/Questions/5/q5_true.png'),
    Image.asset('assets/images/Questions/5/q5_f.png'),
  ];

  var Q6 = Questions();
  Q6.question = Image.asset('assets/images/Questions/6/q6_main.jpg');
  Q6.imageNumber = '3';
  Q6.correctAnswer = 5;
  Q6.answerList = [
    Image.asset('assets/images/Questions/6/q6_a.jpg'),
    Image.asset('assets/images/Questions/6/q6_b.jpg'),
    Image.asset('assets/images/Questions/6/q6_c.jpg'),
    Image.asset('assets/images/Questions/6/q6_e.jpg'),
    Image.asset('assets/images/Questions/6/q6_d.jpg'),
    Image.asset('assets/images/Questions/6/q6_true.jpg'),
  ];

  var Q7 = Questions();
  Q7.question = Image.asset('assets/images/Questions/7/q7_main.jpg');
  Q7.imageNumber = '3';
  Q7.correctAnswer = 1;
  Q7.answerList = [
    Image.asset('assets/images/Questions/7/q7_a.jpg'),
    Image.asset('assets/images/Questions/7/q7_true.jpg'),
    Image.asset('assets/images/Questions/7/q7_c.jpg'),
    Image.asset('assets/images/Questions/7/q7_b.jpg'),
    Image.asset('assets/images/Questions/7/q7_d.jpg'),
    Image.asset('assets/images/Questions/7/q7_f.jpg'),
  ];

  var Q8 = Questions();
  Q8.question = Image.asset('assets/images/Questions/8/q8_main.jpg');
  Q8.imageNumber = '3';
  Q8.correctAnswer = 0;
  Q8.answerList = [
    Image.asset('assets/images/Questions/8/q8_true.jpg'),
    Image.asset('assets/images/Questions/8/q8_b.jpg'),
    Image.asset('assets/images/Questions/8/q8_c.jpg'),
    Image.asset('assets/images/Questions/8/q8_d.jpg'),
    Image.asset('assets/images/Questions/8/q8_f.jpg'),
    Image.asset('assets/images/Questions/8/q8_a.jpg'),
  ];

  var Q9 = Questions();
  Q9.question = Image.asset('assets/images/Questions/9/q9_main.jpg');
  Q9.imageNumber = '3';
  Q9.correctAnswer = 2;
  Q9.answerList = [
    Image.asset('assets/images/Questions/9/q9_a.jpg'),
    Image.asset('assets/images/Questions/9/q9_b.jpg'),
    Image.asset('assets/images/Questions/9/q9_true.jpg'),
    Image.asset('assets/images/Questions/9/q9_c.jpg'),
    Image.asset('assets/images/Questions/9/q9_d.jpg'),
    Image.asset('assets/images/Questions/9/q9_f.jpg'),
  ];

  var Q10 = Questions();
  Q10.question = Image.asset('assets/images/Questions/10/q10_main.jpg');
  Q10.imageNumber = '3';
  Q10.correctAnswer = 0;
  Q10.answerList = [
    Image.asset('assets/images/Questions/10/q10_true.jpg'),
    Image.asset('assets/images/Questions/10/q10_a.jpg'),
    Image.asset('assets/images/Questions/10/q10_b.jpg'),
    Image.asset('assets/images/Questions/10/q10_c.jpg'),
    Image.asset('assets/images/Questions/10/q10_d.jpg'),
    Image.asset('assets/images/Questions/10/q10_f.jpg'),
  ];

  var Q11 = Questions();
  Q11.question = Image.asset('assets/images/Questions/11/q11_main.jpg');
  Q11.imageNumber = '3';
  Q11.correctAnswer = 4;
  Q11.answerList = [
    Image.asset('assets/images/Questions/11/q11_f.jpg'),
    Image.asset('assets/images/Questions/11/q11_d.jpg'),
    Image.asset('assets/images/Questions/11/q11_c.jpg'),
    Image.asset('assets/images/Questions/11/q11_b.jpg'),
    Image.asset('assets/images/Questions/11/q11_true.jpg'),
    Image.asset('assets/images/Questions/11/q11_a.jpg'),
  ];

  var Q12 = Questions();
  Q12.question = Image.asset('assets/images/Questions/12/q12_main.jpg');
  Q12.imageNumber = '3';
  Q12.correctAnswer = 5;
  Q12.answerList = [
    Image.asset('assets/images/Questions/12/q12_a.jpg'),
    Image.asset('assets/images/Questions/12/q12_b.jpg'),
    Image.asset('assets/images/Questions/12/q12_c.jpg'),
    Image.asset('assets/images/Questions/12/q12_d.jpg'),
    Image.asset('assets/images/Questions/12/q12_f.jpg'),
    Image.asset('assets/images/Questions/12/q12_true.jpg'),
  ];

  var Q13 = Questions();
  Q13.question = Image.asset('assets/images/Questions/13/q13_main.jpg');
  Q13.imageNumber = '3';
  Q13.correctAnswer = 5;
  Q13.answerList = [
    Image.asset('assets/images/Questions/13/q13_a.jpg'),
    Image.asset('assets/images/Questions/13/q13_b.jpg'),
    Image.asset('assets/images/Questions/13/q13_c.jpg'),
    Image.asset('assets/images/Questions/13/q13_d.jpg'),
    Image.asset('assets/images/Questions/13/q13_f.jpg'),
    Image.asset('assets/images/Questions/13/q13_true.jpg'),
  ];

  var Q14 = Questions();
  Q14.question = Image.asset('assets/images/Questions/14/q14_main.jpg');
  Q14.imageNumber = '3';
  Q14.correctAnswer = 2;
  Q14.answerList = [
    Image.asset('assets/images/Questions/14/q14_a.jpg'),
    Image.asset('assets/images/Questions/14/q14_b.jpg'),
    Image.asset('assets/images/Questions/14/q14_c.jpg'),
    Image.asset('assets/images/Questions/14/q14_true.jpg'),
    Image.asset('assets/images/Questions/14/q14_f.jpg'),
    Image.asset('assets/images/Questions/14/q14_d.jpg'),
  ];

  var Q15 = Questions();
  Q15.question = Image.asset('assets/images/Questions/15/q15_main.jpg');
  Q15.imageNumber = '3';
  Q15.correctAnswer = 3;
  Q15.answerList = [
    Image.asset('assets/images/Questions/15/q15_a.jpg'),
    Image.asset('assets/images/Questions/15/q15_b.jpg'),
    Image.asset('assets/images/Questions/15/q15_c.jpg'),
    Image.asset('assets/images/Questions/15/q15_true.jpg'),
    Image.asset('assets/images/Questions/15/q15_f.jpg'),
    Image.asset('assets/images/Questions/15/q15_d.jpg'),
  ];

  var Q16 = Questions();
  Q16.question = Image.asset('assets/images/Questions/16/q16_main.jpg');
  Q16.imageNumber = '3';
  Q16.correctAnswer = 3;
  Q16.answerList = [
    Image.asset('assets/images/Questions/16/q16_a.jpg'),
    Image.asset('assets/images/Questions/16/q16_b.jpg'),
    Image.asset('assets/images/Questions/16/q16_c.jpg'),
    Image.asset('assets/images/Questions/16/q16_true.jpg'),
    Image.asset('assets/images/Questions/16/q16_f.jpg'),
    Image.asset('assets/images/Questions/16/q16_d.jpg'),
  ];

  var Q17 = Questions();
  Q17.question = Image.asset('assets/images/Questions/17/q17_main.jpg');
  Q17.imageNumber = '3';
  Q17.correctAnswer = 0;
  Q17.answerList = [
    Image.asset('assets/images/Questions/17/q17_true.jpg'),
    Image.asset('assets/images/Questions/17/q17_b.jpg'),
    Image.asset('assets/images/Questions/17/q17_c.jpg'),
    Image.asset('assets/images/Questions/17/q17_d.jpg'),
    Image.asset('assets/images/Questions/17/q17_f.jpg'),
    Image.asset('assets/images/Questions/17/q17_a.jpg'),
  ];

  var Q18 = Questions();
  Q18.question = Image.asset('assets/images/Questions/18/q18_main.jpg');
  Q18.imageNumber = '3';
  Q18.correctAnswer = 0;
  Q18.answerList = [
    Image.asset('assets/images/Questions/18/q18_true.jpg'),
    Image.asset('assets/images/Questions/18/q18_b.jpg'),
    Image.asset('assets/images/Questions/18/q18_c.jpg'),
    Image.asset('assets/images/Questions/18/q18_d.jpg'),
    Image.asset('assets/images/Questions/18/q18_f.jpg'),
    Image.asset('assets/images/Questions/18/q18_a.jpg'),
  ];

  var Q19 = Questions();
  Q19.question = Image.asset('assets/images/Questions/19/q19_main.jpg');
  Q19.imageNumber = '3';
  Q19.correctAnswer = 0;
  Q19.answerList = [
    Image.asset('assets/images/Questions/19/q19_true.jpg'),
    Image.asset('assets/images/Questions/19/q19_b.jpg'),
    Image.asset('assets/images/Questions/19/q19_c.jpg'),
    Image.asset('assets/images/Questions/19/q19_d.jpg'),
    Image.asset('assets/images/Questions/19/q19_f.jpg'),
    Image.asset('assets/images/Questions/19/q19_a.jpg'),
  ];

  var Q20 = Questions();
  Q20.question = Image.asset('assets/images/Questions/20/q20_main.jpg');
  Q20.imageNumber = '3';
  Q20.correctAnswer = 4;
  Q20.answerList = [
    Image.asset('assets/images/Questions/20/q20_a.jpg'),
    Image.asset('assets/images/Questions/20/q20_b.jpg'),
    Image.asset('assets/images/Questions/20/q20_c.jpg'),
    Image.asset('assets/images/Questions/20/q20_d.jpg'),
    Image.asset('assets/images/Questions/20/q20_true.jpg'),
    Image.asset('assets/images/Questions/20/q20_f.jpg'),
  ];

  return [
    Q1, 
    Q2,
    Q3,
    Q4,
    Q5,
    Q6,
    Q7,
    Q8,
    Q9,
    Q10,
    Q11,
    Q12,
    Q13,
    Q14,
    Q15,
    Q16,
    Q17,
    Q18,
    Q19,
    Q20,
  ];
}