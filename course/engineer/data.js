var jsonData = [
    {
        "q" : "What is HTML in full?",
        "opt1" : "Hyper Text Markup Language",
        "opt2" : "HTML Markup Language",
        "opt3" : "Hide Text Mean Language",

    },
    {
        "q" : "What is CSS in full?",
        "opt1" : "content styling sheet",
        "opt2" : "Cascading Style Sheet",
        "opt3" : "Css sheet style",
       
    },
    {
        "q" : "Is PHP a front-end language?",
        "opt1" : "Yes ofcourse",
        "opt2" : "Nope!, It's a backend Language.",
        "opt3" : "Both A and B",
       
    },
    {
        "q" : "What is 2 + 2?",
        "opt1" : "The answer is: 22",
        "opt2" : "The answer is: 2.2",
        "opt3" : "The answer is: 4",
       
    },
    {
        "q" : "What is the hexdecimal color code of black?",
        "opt1" : "#fff;",
        "opt2" : "#000;",
        "opt3" : "#f00;",
       
    }
];

function petTemplate(pet,index){
    return `
    <div id="question">
        <p>${pet.q}</p>
        <div class="answer">
          <label>
            <input type="radio" name="qn${index}" value="A">
            <span>${pet.opt1}</span>
          </label>
        </div>

        <div class="answer">
          <label>
            <input type="radio" name="qn${index}" value="B">
            <span >${pet.opt2}</span>
          </label>
        </div>

        <div class="answer">
          <label>
            <input type="radio" name="qn${index}" value="C">
            <span >${pet.opt3}</span>
          </label>
        </div>
    </div>
    <br>
    <br>
        `
}

document.getElementById("cache").innerHTML=`
   
 
    ${jsonData.map(petTemplate).join('')}


        

`

