const entrada = require("readline-sync");

console.log("=== SISTEMA DE CONTROLE DE QUALIDADE ===");

const pesos = [];

const quantidade = entrada.questionInt(`Quantas pecas serao pesadas?`)
const quantidade2 = entrada.questionFloat(`Quantas pec`)


for (let i= 0; i < quantidade; i++) {
    let somaTotal = entrada.questionFloat(`peca ${i+1}: `);
    pesos.push(somaTotal);


}
console.log("\n--- RELATÓRIO DA AUDITORIA ---");
console.log(`pesos registrados; ${pesos.join(" kg | ")} kg`)

