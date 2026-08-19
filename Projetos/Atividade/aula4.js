// const readline = require("readline-sync");
// const nome = readline.question("Digite seu nome: ");
// const cidade = readline.question("Digite sua cidade: ");
// console.log("Olá,", nome);
// console.log("Você mora em", cidade);
// const idade = Number(readline.question("Digite sua idade: "));
// const idadeFutura = idade + 5;
// console.log("Daqui a cinco anos você terá", idadeFutura, "anos.");
const readline = require("readline-sync");

const nome = readline.question("Digite o nome do aluno: ");
const disciplina = readline.question("Digite a disciplina: ");
const nota1 = Number(readline.question("Digite a primeira nota: "));
const nota2 = Number(readline.question("Digite a segunda nota: "));
const faltas = Number(readline.question("Digite a quantidade de faltas: "));
const escola = (readline.question("Digite o nome da escola: "));
const ano_letivo = (readline.question("Digite seu ano letivo: "));

const media = (nota1 + nota2) / 2;

console.log("\n--- RELATÓRIO DO ALUNO ---");
console.log("Aluno:", nome);
console.log("Disciplina:", disciplina);
console.log("Nota 1:", nota1);
console.log("Nota 2:", nota2);
console.log("Média:", media);
console.log("Faltas:", faltas);
console.log("Escola:", escola);
console.log("Ano Letivo:", ano_letivo);


