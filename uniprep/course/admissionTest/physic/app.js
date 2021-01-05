const quizForm = document.querySelector('.qns-form');
const resultPanel = document.querySelector('#result');

const Marks = document.querySelector('span.marks');
const testAnswers = ['A', 'B', 'B', 'C', 'B'];
const p = document.getElementById('result');

quizForm.addEventListener('submit', e => {
  e.preventDefault();

  let userAnswers = [quizForm.qn1.value, quizForm.qn2.value, quizForm.qn3.value, quizForm.qn4.value, quizForm.qn5.value];
  let score = 0;

  userAnswers.forEach((answer, index) => {
    if (answer === testAnswers[index]) {
      score += 20;
    }
  });
  
  resultPanel.classList.remove('invisible');
  
  scrollTo({
    top: 0,
    behavior: 'smooth'
  });

  let output = 0;

  const counter = setInterval(() => {
    Marks.textContent = `${output}%`;

    if (output === score) {
      clearInterval(counter);
    } else {
      output++;
    }
  }, 10)

  quizForm.reset();

});