const entrada = require(`readline-sync`);

const peca = entrada.questionInt(`Quantas pecas sao produzidas em um ciclo?`);

for (let i=1; i <= 10; i++) {
    console.log(`ciclo ${i}: ${peca * i} producao acumulada `);
}