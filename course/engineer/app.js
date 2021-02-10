const quizForm = document.querySelector('.qns-form');
const resultPanel = document.querySelector('#result');

const Marks = document.querySelector('span.marks');
const testAnswers = ['A', 'B', 'B', 'B', 'B', 'A', 'A', 'B', 'A', 'A'];
const p = document.getElementById('result');

quizForm.addEventListener('submit', e => {
  e.preventDefault();

  let userAnswers = [quizForm.qn0.value, quizForm.qn1.value, quizForm.qn2.value, quizForm.qn3.value, quizForm.qn4.value,quizForm.qn5.value, quizForm.qn6.value, quizForm.qn7.value, quizForm.qn8.value, quizForm.qn9.value];
  let score = 0;

  userAnswers.forEach((answer, index) => {
    if (answer === testAnswers[index]) {
      score += 10;
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