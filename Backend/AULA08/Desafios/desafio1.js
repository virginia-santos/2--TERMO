const entrada = require("readline-sync");

console.log("---------------------------------");
console.log("CONTROLE DE ACESSO AO LABORATÓRIO");
console.log("---------------------------------");

const idade = entrada.questionInt("Qual e a sua idade?");
const autorização = entrada.question("Você possui autorizacao? [S/N]") 
const acompanhamento = entrada.question("Voce m, está acompanhado por um professor? [S/N]");

console.log(`\nAluno: ${idade}`);

if (acompanhamento == "S" || idade >=16 && autorização == "S") {
    console.log("ACESSO LIBERADO");
}
else {
    console.log("ACESSO NEGADO!");
}

