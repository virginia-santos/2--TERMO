const entrada = require('readline-sync');

console.log("--- INDICE DE MASSA CORPOREA ---")

const nomeAltura = entrada.questionFloat("Qual é a sua altura?");
const nomePeso = entrada.questionFloat("Qual é o seu peso?");

const total = nomePeso / (nomeAltura * nomeAltura)

console.log("\n--- RESULTADO DO CALCULO ---");
console.log(`O seu IMC é: ${total.toFixed(2)}`); 